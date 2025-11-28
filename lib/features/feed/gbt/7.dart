import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';

class Listviewstate extends StatelessWidget {
  final List<PostModel> dataPostList;
  final ScrollController controller;
  final bool hasMore;

  const Listviewstate({
    super.key,
    required this.dataPostList,
    required this.controller,
    required this.hasMore,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemCount: dataPostList.length + (hasMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index < dataPostList.length) {
          //   return Listposts(post: dataPostList[index]);
        } else {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
