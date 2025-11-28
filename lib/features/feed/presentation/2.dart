import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/1.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/feed_card_content.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: FeedCardContent(post: post),
      ),
    );
  }
}
