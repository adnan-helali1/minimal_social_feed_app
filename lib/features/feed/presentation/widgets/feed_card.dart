import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/helpers/spacing.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/audio_player.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/video_player_widget.dart';

import '../../data/models/feed_model.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // USER + TIME
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  post.user?.name ?? "User",
                  style: TextStyles.font15BlackBold,
                ),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14),
                    const SizedBox(width: 4),
                    Text(post.timeAgo),
                  ],
                ),
              ],
            ),

            verticalSpace(12),

            // POST CONTENT
            if ((post.content ?? "").isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  post.content ?? "",
                  style: const TextStyle(fontSize: 14),
                ),
              ),

            // MEDIA LIST
            if ((post.media ?? []).isNotEmpty)
              Column(
                children:
                    post.media!.map((media) {
                      final type = media.mediaType ?? "";

                      switch (type) {
                        case "image":
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                media.url ?? "",
                                height: 240.h,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );

                        // Video

                        case "video":
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Container(
                              height: 240.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorsManegar.black,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: VideoPlayerWidget(url: media.url ?? ""),
                            ),
                          );

                        case "audio":
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: AudioPlayerWidget(media: media),
                          );

                        // return Padding(
                        //   padding: const EdgeInsets.only(bottom: 12),
                        //   child: ListTile(
                        //     leading: const Icon(Icons.audiotrack),
                        //     title: const Text("Audio File"),
                        //     trailing: const Icon(Icons.play_arrow),
                        //     onTap: () {

                        //     },
                        //   ),
                        // );

                        case "document":
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: ListTile(
                              leading: const Icon(Icons.insert_drive_file),
                              title: Text(
                                (media.filePath ?? "").split('/').last,
                              ),
                              subtitle: const Text("Tap To Download"),
                              trailing: const Icon(Icons.download),
                              onTap: () {},
                            ),
                          );

                        default:
                          return const SizedBox.shrink();
                      }
                    }).toList(),
              ),

            verticalSpace(12),

            // ACTION BAR
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
