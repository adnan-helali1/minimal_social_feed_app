import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/helpers/constants.dart';
import 'package:minimal_social_feed_app/core/helpers/shared_pref_helper.dart';
import 'package:minimal_social_feed_app/core/networking/api_constans.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    if (dio == null) {
      dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
          validateStatus: (status) => status != null && status < 500,
          headers: {"Accept": "application/json"},
        ),
      );

      addDioInterceptor();
    }

    return dio!;
  }

  static void addDioInterceptor() {
    /// Add token for every request
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SharedPrefHelper.getSecuredString(
            SharedPrefsKey.userToken,
          );

          if (token.isNotEmpty) {
            options.headers["Authorization"] = "Bearer $token";
          }

          return handler.next(options);
        },
      ),
    );

    /// 🔥 Refresh Token Interceptor
    dio?.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException error, handler) async {
          // Check if token expired
          if (error.response?.statusCode == 401) {
            final refresh = await SharedPrefHelper.getSecuredString(
              SharedPrefsKey.refreshToken,
            );

            if (refresh.isEmpty) {
              return handler.next(error);
            }

            try {
              // call refresh endpoint
              var baseurl = ApiConstans.apiBaseUrl;
              final response = await dio!.post(
                "$baseurl/refresh-token",
                data: {"refresh_token": refresh},
              );

              if (response.statusCode == 200 &&
                  response.data["status"] == true) {
                final newAccess = response.data["access_token"];
                final newRefresh = response.data["refresh_token"];

                // Save new tokens
                await SharedPrefHelper.setSecuredString(
                  SharedPrefsKey.userToken,
                  newAccess,
                );
                await SharedPrefHelper.setSecuredString(
                  SharedPrefsKey.refreshToken,
                  newRefresh,
                );

                // Update header
                dio?.options.headers["Authorization"] = "Bearer $newAccess";

                // Retry old request
                final opts = error.requestOptions;
                opts.headers["Authorization"] = "Bearer $newAccess";

                final clonedRequest = await dio!.fetch(opts);
                return handler.resolve(clonedRequest);
              }
            } catch (e) {
              // refresh failed → logout user
              return handler.next(error);
            }
          }

          return handler.next(error);
        },
      ),
    );

    /// Logger
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers["Authorization"] = "Bearer $token";
  }
}
