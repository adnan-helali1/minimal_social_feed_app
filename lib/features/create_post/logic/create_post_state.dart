import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model.dart';

part 'create_post_state.freezed.dart';

@freezed
class CreatePostState with _$CreatePostState {
  const factory CreatePostState.initial() = _Initial;
  const factory CreatePostState.loading() = _Loading;
  const factory CreatePostState.success(FeedResponseModel post) = _Success;
  const factory CreatePostState.error(String message) = _Error;
}
