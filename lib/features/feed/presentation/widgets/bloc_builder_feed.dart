import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_cubit.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_state.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/huo_feed_card.dart';

class BlocBuilderFeed extends StatelessWidget {
  const BlocBuilderFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedCubit, FeedState>(
      builder: (context, state) {
        return state.maybeWhen(
          feedloading: () => const Center(child: CircularProgressIndicator()),
          feedSuccess: (feedResponse) {
            final posts = feedResponse.posts ?? [];
            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return PostCard(post: posts[index]);
              },
            );
          },
          feederror:
              (errorHandler) => Center(
                child: Text(
                  errorHandler.apiErrorModel.message,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
