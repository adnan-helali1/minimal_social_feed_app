import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_model.dart';
part 'feed_state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.feedloading() = _FeedLoading;

  const factory FeedState.feedSuccess({
    required List<Post> posts,
    required int currentPage,
    required int lastPage,
    required bool isLoadingMore,
  }) = _FeedSuccess;

  const factory FeedState.feederror(ErrorHandler errorHandler) = _FeedError;
}
