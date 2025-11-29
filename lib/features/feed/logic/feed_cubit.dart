import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_state.dart';

class FeedCubit extends Cubit<FeedState> {
  final FeedRepo _feedRepo;
  FeedCubit(this._feedRepo) : super(FeedState.initial());

  void getfeed({required int page}) async {
    emit(const FeedState.feedloading());
    final response = await _feedRepo.feedRepo();
    response.when(
      success: (feedResponse) {
        emit(FeedState.feedSuccess(feedResponse));
      },
      failure: (errorHandler) {
        emit(FeedState.feederror(errorHandler));
      },
    );
  }
}
