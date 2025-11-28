import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/core/networking/api_error_model.dart';
import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';

class FeedRemoteDataSource {
  final ApiService _apiService;

  FeedRemoteDataSource(this._apiService);

  Future<ApiResult<FeedResponse>> getFeed({required int page}) async {
    try {
      final response = await _apiService.getFeed(page);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(
        ApiErrorModel(message: e.toString()) as ErrorHandler,
      );
    }
  }
}
