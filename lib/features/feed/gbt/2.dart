/*import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';
import 'package:minimal_social_feed_app/features/feed/domain/feed_state.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';

class FeedCubit extends Cubit<FeedState> {
  final FeedRepo _feedRepo;

  FeedCubit(this._feedRepo) : super(const FeedState.initial());

  List<PostModel> allPosts = [];
  bool hasMore = true;
  bool isLoading = false;

  Future<void> getFeed({required int page}) async {
    if (isLoading || !hasMore) return;

    isLoading = true;
    emit(const FeedState.feedloading());

  //  final result = await _feedRepo.getFeed(page: page);

   // result.when(
      success: (FeedResponse response) {
        final newPosts = response.data?.posts ?? [];

        if (newPosts.isEmpty) {
          hasMore = false;
        } else {
        //  allPosts.addAll(newPosts);
        }

    //     emit(FeedState.feedSuccess(allPosts, hasMore));
    //     isLoading = false;
    //   },
    //   failure: (error) {
    //     emit(FeedState.feederror(error.message ?? "Something went wrong"));
    //     isLoading = false;
    //   },
    // );
//   }
// }*/
