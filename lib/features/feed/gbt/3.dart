import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';

part '3.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;

  const factory FeedState.feedloading() = FeedLoading;

  const factory FeedState.feedSuccess(List<PostModel> posts, bool hasMore) =
      FeedSuccess;

  const factory FeedState.feederror(String message) = FeedError;
}
