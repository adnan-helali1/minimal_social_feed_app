class ApiConstans {
  static const String apiBaseUrl = "http://161.97.64.130:8081/api";
  static const String login = "/login";
  static const String register = "/register";
  static const String feed = "/posts";
}

class ApiErrors {
  static const String badRequestError = "bad Request Error";
  static const String noContent = "no Content";
  static const String forbiddenError = "forbidden Error";
  static const String unauthorizedError = "unauthorized Error";
  static const String notFoundError = "not Found Error";
  static const String conflictError = "conflict Error";
  static const String internalServerError = "internal Server Error";
  static const String unknownError = "unknown Error";
  static const String timeoutError = "timeou tError";
  static const String defaultError = "Invalid credentials.";
  static const String cacheError = "cache Error";
  static const String noInternetError = "no InternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
