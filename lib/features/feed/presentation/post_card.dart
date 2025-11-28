import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';

class PostCard extends StatelessWidget {
  final Posts? postsData;

  final PostModel post;

  const PostCard({super.key, required this.post, this.postsData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
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
                child: const Center(
                  child: Icon(Icons.play_circle_fill, size: 60),
                ),
              ),

            if (post.text != null && post.type != PostType.text)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(postsData?.content ?? 'defaultss'),
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
        ),
      ),
    );
  }
}
