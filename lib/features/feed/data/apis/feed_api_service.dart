import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/networking/api_constans.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
import 'package:retrofit/retrofit.dart';
part 'feed_api_service.g.dart';

@RestApi(baseUrl: ApiConstans.apiBaseUrl)
abstract class FeedApiService {
  factory FeedApiService(Dio dio) = _FeedApiService;

  @GET("/posts")
  Future<FeedResponse> getFeedData();
}
