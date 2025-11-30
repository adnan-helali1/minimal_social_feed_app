import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/features/single_post/logic/single_post_cubit.dart';
import 'package:minimal_social_feed_app/features/single_post/presentation/widgets/bloc_builder_single_post.dart';

class SinglePostScreen extends StatelessWidget {
  final int postId;

  const SinglePostScreen({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              SinglePostCubit(getit())..getsinglepostid(postId, postid: postId),
      child: const Scaffold(body: BlocBuilderSinglePost()),
    );
  }
}
