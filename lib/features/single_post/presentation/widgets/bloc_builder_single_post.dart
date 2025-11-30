import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/single_post/logic/cubit/single_post_cubit.dart';
import 'package:minimal_social_feed_app/features/single_post/logic/cubit/single_post_state.dart';
import 'package:minimal_social_feed_app/features/single_post/presentation/widgets/single_post_card.dart';

class BlocBuilderSinglePost extends StatelessWidget {
  const BlocBuilderSinglePost({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SinglePostCubit, SinglePostState>(
      builder: (context, state) {
        return state.maybeWhen(
          singlePostloading:
              () => const Center(child: CircularProgressIndicator()),

          singlePostSuccess: (post) {
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                index = post.id!;
                return SinglePostCard(post: post);
              },
            );
          },

          singlePosterror:
              (errorHandler) =>
                  Center(child: Text(errorHandler.apiErrorModel.message)),

          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
