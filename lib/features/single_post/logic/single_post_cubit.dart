import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/single_post/data/models/single_post_response_model.dart';
import 'package:minimal_social_feed_app/features/single_post/data/repos/single_post_repo.dart';
import 'package:minimal_social_feed_app/features/single_post/logic/single_post_state.dart';

class SinglePostCubit extends Cubit<SinglePostState> {
  final SinglePostRepo _singlePostRepo;

  SinglePostCubit(this._singlePostRepo)
    : super(const SinglePostState.initial());

  late SingleDataWrapper singlePosts;

  /// first page
  Future<void> getsinglepostid(int postId, {required int postid}) async {
    emit(const SinglePostState.singlePostloading());

    final response = await _singlePostRepo.singlepostrepo(postid: postid);

    response.when(
      success: (singlePostResponseModel) {
        singlePosts = singlePostResponseModel.data!;
        emit(SinglePostState.singlePostSuccess(posts: singlePosts));
      },
      failure: (errorHandler) {
        emit(SinglePostState.singlePosterror(errorHandler));
      },
    );
  }
}
