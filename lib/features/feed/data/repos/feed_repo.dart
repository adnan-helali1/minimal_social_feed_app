import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/features/feed/data/apis/feed_api_service.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';

class FeedRepo {
  final FeedApiService _feedApiService;

  FeedRepo(this._feedApiService);

  Future<ApiResult<FeedResponse>> getFeedData() async {
    try {
      final response = await _feedApiService.getFeedData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
