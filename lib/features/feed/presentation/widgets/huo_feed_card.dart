import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response_model.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final hasMedia = post.media.isNotEmpty;
    final firstMedia = hasMedia ? post.media.first : null;
    final isImage = hasMedia && firstMedia!.mediaType == "image";
    final isVideo = hasMedia && firstMedia!.mediaType == "video";

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// USER NAME
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  post.user.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14),
                    SizedBox(width: 4),
                    Text(post.timeAgo),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 8),

            /// TEXT CONTENT
            const SizedBox(height: 10),

            /// IMAGE
            if (isImage)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  firstMedia.url,
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

            /// VIDEO
            if (isVideo)
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(Icons.play_circle_fill, size: 64),
                ),
              ),

            const SizedBox(height: 12),

            /// ACTION BAR
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
