import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_cubit.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_state.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/huo_feed_card.dart';

class BlocBuilderFeed extends StatelessWidget {
  final ScrollController scrollController;

  const BlocBuilderFeed({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedCubit, FeedState>(
      builder: (context, state) {
        return state.maybeWhen(
          feedloading: () => const Center(child: CircularProgressIndicator()),

          feedSuccess: (posts, currentPage, lastPage, isLoadingMore) {
            return ListView.builder(
              controller: scrollController,
              itemCount: posts.length + 1,
              itemBuilder: (context, index) {
                if (index < posts.length) {
                  return PostCard(post: posts[index]);
                }

                return isLoadingMore
                    ? const Padding(
                      padding: EdgeInsets.all(16),
                      child: Center(child: CircularProgressIndicator()),
                    )
                    : const SizedBox.shrink();
              },
            );
          },

          feederror:
              (errorHandler) =>
                  Center(child: Text(errorHandler.apiErrorModel.message)),

          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
