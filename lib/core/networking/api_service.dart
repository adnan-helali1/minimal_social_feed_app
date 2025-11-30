import 'package:dio/dio.dart';
import 'package:minimal_social_feed_app/core/networking/api_constans.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model1.dart';
import 'package:minimal_social_feed_app/features/login/data/models/login_request_body.dart';
import 'package:minimal_social_feed_app/features/login/data/models/login_response.dart';
import 'package:minimal_social_feed_app/features/register/data/models/register_request_body.dart';
import 'package:minimal_social_feed_app/features/register/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstans.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // ================== AUTH ==================

  @POST(ApiConstans.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstans.register)
  Future<RegisterResponse> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  // ================== POSTS ==================

  @GET("${ApiConstans.feed}?page={page}")
  Future<FeedResponseModel> getPosts(@Path("page") int page);
}
