import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';

part 'feed_state.freezed.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState.initial() = _Initial;
  const factory FeedState.feedloading() = Loading;
  const factory FeedState.feedSuccess(FeedResponse feedResponse) = FeedSuccess;
  const factory FeedState.feederror(ErrorHandler errorHandler) = Error;
}
