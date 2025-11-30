import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minimal_social_feed_app/core/networking/api_error_handler.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_model.dart';
import 'package:minimal_social_feed_app/features/single_post/data/models/single_post_response_model.dart';

part 'single_post_state.freezed.dart';

@freezed
class SinglePostState with _$SinglePostState {
  const factory SinglePostState.initial() = _Initial;
  const factory SinglePostState.singlePostloading() = _SinglePostloading;

  const factory SinglePostState.singlePostSuccess({
    required SingleDataWrapper posts,
  }) = _SinglePostSuccess;

  const factory SinglePostState.singlePosterror(ErrorHandler errorHandler) =
      _SinglePostError;
}
