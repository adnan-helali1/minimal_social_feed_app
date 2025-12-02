import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model.dart';

class CreatePostRepo {
  final ApiService _api;

  CreatePostRepo(this._api);

  Future<ApiResult<FeedResponseModel>> createPost({
    required String title,
    required String content,
    required List<MultipartFile> media,
  }) async {
    try {
      final response = await _api.createPost(title, content, media);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
