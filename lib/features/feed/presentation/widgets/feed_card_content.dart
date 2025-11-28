import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/1.dart';

class FeedCardContent extends StatelessWidget {
  final PostModel post;

  const FeedCardContent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (post.type == PostType.text)
          Text(post.text ?? '', style: const TextStyle(fontSize: 16)),

        if (post.type == PostType.image)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              post.imageUrl!,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),

        if (post.type == PostType.video)
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(child: Icon(Icons.play_circle_fill, size: 60)),
          ),

        if (post.text != null && post.type != PostType.text)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(post.text!),
          ),

        const SizedBox(height: 12),

        // Bottom bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.favorite_border),
            Icon(Icons.comment),
            Icon(Icons.share),
          ],
        ),
      ],
    );
  }
}
