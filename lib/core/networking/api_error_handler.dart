// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/networking/api_constans.dart';
import 'api_error_model.dart';

// i will refactor that sunday night wallah
enum DataSource {
  NO_CONTENT,
  BAD_REQUEST,
  FORBIDDEN,
  UNAUTORISED,
  NOT_FOUND,
  INTERNAL_SERVER_ERROR,
  CONNECT_TIMEOUT,
  CANCEL,
  RECIEVE_TIMEOUT,
  SEND_TIMEOUT,
  CACHE_ERROR,
  NO_INTERNET_CONNECTION,
  DEFAULT,
}

class ResponseCode {
  static const int SUCCESS = 200;
  static const int NO_CONTENT = 201;
  static const int BAD_REQUEST = 400;
  static const int UNAUTORISED = 401;
  static const int FORBIDDEN = 403;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int NOT_FOUND = 404;
  static const int API_LOGIC_ERROR = 422;

  // local
  static const int CONNECT_TIMEOUT = -1;
  static const int CANCEL = -2;
  static const int RECIEVE_TIMEOUT = -3;
  static const int SEND_TIMEOUT = -4;
  static const int CACHE_ERROR = -5;
  static const int NO_INTERNET_CONNECTION = -6;
  static const int DEFAULT = -7;
}

class ResponseMessage {
  static const String NO_CONTENT = ApiErrors.noContent;
  static const String BAD_REQUEST = ApiErrors.badRequestError;
  static const String UNAUTORISED = ApiErrors.unauthorizedError;
  static const String FORBIDDEN = ApiErrors.forbiddenError;
  static const String INTERNAL_SERVER_ERROR = ApiErrors.internalServerError;
  static const String NOT_FOUND = ApiErrors.notFoundError;

  static String CONNECT_TIMEOUT = ApiErrors.timeoutError;
  static String CANCEL = ApiErrors.defaultError;
  static String RECIEVE_TIMEOUT = ApiErrors.timeoutError;
  static String SEND_TIMEOUT = ApiErrors.timeoutError;
  static String CACHE_ERROR = ApiErrors.cacheError;
  static String NO_INTERNET_CONNECTION = ApiErrors.noInternetError;
  static String DEFAULT = ApiErrors.defaultError;
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.NO_CONTENT:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.NO_CONTENT,
        );
      case DataSource.BAD_REQUEST:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.BAD_REQUEST,
        );
      case DataSource.UNAUTORISED:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.UNAUTORISED,
        );
      case DataSource.FORBIDDEN:
        return ApiErrorModel(status: false, message: ResponseMessage.FORBIDDEN);
      case DataSource.NOT_FOUND:
        return ApiErrorModel(status: false, message: ResponseMessage.NOT_FOUND);
      case DataSource.INTERNAL_SERVER_ERROR:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.INTERNAL_SERVER_ERROR,
        );
      case DataSource.CONNECT_TIMEOUT:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.CONNECT_TIMEOUT,
        );
      case DataSource.CANCEL:
        return ApiErrorModel(status: false, message: ResponseMessage.CANCEL);
      case DataSource.RECIEVE_TIMEOUT:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.RECIEVE_TIMEOUT,
        );
      case DataSource.SEND_TIMEOUT:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.SEND_TIMEOUT,
        );
      case DataSource.CACHE_ERROR:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.CACHE_ERROR,
        );
      case DataSource.NO_INTERNET_CONNECTION:
        return ApiErrorModel(
          status: false,
          message: ResponseMessage.NO_INTERNET_CONNECTION,
        );
      case DataSource.DEFAULT:
        return ApiErrorModel(status: false, message: ResponseMessage.DEFAULT);
    }
  }
}

class ErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleError(error);
    } else {
      apiErrorModel = DataSource.DEFAULT.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.CONNECT_TIMEOUT.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.SEND_TIMEOUT.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.RECIEVE_TIMEOUT.getFailure();
    case DioExceptionType.cancel:
      return DataSource.CANCEL.getFailure();
    case DioExceptionType.connectionError:
    case DioExceptionType.badCertificate:
      return DataSource.DEFAULT.getFailure();

    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      final data = error.response?.data;

      if (data == null) {
        return DataSource.DEFAULT.getFailure();
      }

      dynamic parsed;

      // 🟢 إذا رجع String نحاول نحوله JSON
      if (data is String) {
        try {
          parsed = jsonDecode(data);
        } catch (_) {
          // String حقيقي مو JSON
          return ApiErrorModel(status: false, message: data);
        }
      }
      // 🟢 إذا Map خلاص ممتاز
      else if (data is Map<String, dynamic>) {
        parsed = data;
      } else {
        return DataSource.DEFAULT.getFailure();
      }

      // تأكدنا إنه Map
      if (parsed is Map<String, dynamic>) {
        return ApiErrorModel.fromJson(parsed);
      }

      return DataSource.DEFAULT.getFailure();
  }
}

class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
}
