import 'package:minimal_social_feed_app/core/networking/api_result.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
import 'package:minimal_social_feed_app/features/feed/gbt/5.dart';

class FeedRepo {
  final FeedRemoteDataSource _remote;

  FeedRepo(this._remote);

  Future<ApiResult<FeedResponse>> getFeed({required int page}) {
    return _remote.getFeed(page: page);
  }
}
