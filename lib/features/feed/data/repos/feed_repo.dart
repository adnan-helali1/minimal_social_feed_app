import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model1.dart';

class FeedRepo {
  final ApiService _apiService;

  FeedRepo(this._apiService);

  Future<ApiResult<FeedResponseModel>> feedRepo({required int page}) async {
    try {
      final response = await _apiService.getPosts(page);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
