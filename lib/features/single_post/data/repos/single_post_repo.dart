import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/features/single_post/data/models/single_post_response_model.dart';

class SinglePostRepo {
  final ApiService _apiService;

  SinglePostRepo(this._apiService);

  Future<ApiResult<SinglePostResponseModel>> singlepostrepo({
    required int postid,
  }) async {
    try {
      final response = await _apiService.getSinglePostId(postid);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
