import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  final FeedRepo _feedRepo;

  FeedCubit(this._feedRepo) : super(const FeedState.initial());

  int currentPage = 1;
  int lastPage = 1;
  bool isLoadingMore = false;
  List<Post> allPosts = [];

  /// first page
  Future<void> getfeed({required int page}) async {
    emit(const FeedState.feedloading());

    final response = await _feedRepo.feedRepo(page: page);

    response.when(
      success: (feedResponse) {
        allPosts = feedResponse.posts;
        currentPage = feedResponse.pagination.currentPage;
        lastPage = feedResponse.pagination.lastPage;

        emit(
          FeedState.feedSuccess(
            posts: allPosts,
            currentPage: currentPage,
            lastPage: lastPage,
            isLoadingMore: false,
          ),
        );
      },
      failure: (errorHandler) {
        emit(FeedState.feederror(errorHandler));
      },
    );
  }

  ///  (infinite scroll)
  Future<void> loadMore() async {
    if (isLoadingMore) return;
    if (currentPage >= lastPage) return;

    isLoadingMore = true;

    emit(
      FeedState.feedSuccess(
        posts: allPosts,
        currentPage: currentPage,
        lastPage: lastPage,
        isLoadingMore: true,
      ),
    );

    currentPage++;
    final response = await _feedRepo.feedRepo(page: currentPage);

    response.when(
      success: (feedResponse) {
        allPosts.addAll(feedResponse.posts);
        lastPage = feedResponse.pagination.lastPage;
        isLoadingMore = false;

        emit(
          FeedState.feedSuccess(
            posts: allPosts,
            currentPage: currentPage,
            lastPage: lastPage,
            isLoadingMore: false,
          ),
        );
      },
      failure: (errorHandler) {
        isLoadingMore = false;
        emit(FeedState.feederror(errorHandler));
      },
    );
  }
}
