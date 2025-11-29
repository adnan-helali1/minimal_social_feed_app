import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/helpers/constants.dart';
import 'package:minimal_social_feed_app/core/helpers/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  /// private constructor as I don't want to allow creating an instance of this class

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
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Read token every request
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
