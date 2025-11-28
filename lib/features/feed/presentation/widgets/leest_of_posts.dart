import 'package:minimal_social_feed_app/features/feed/presentation/1.dart';

List<PostModel> fakePosts(int page) {
  if (page > 5) return []; // بعد الصفحة 5 ما في بيانات

  return List.generate(6, (i) {
    if (i % 3 == 0) {
      return PostModel(
        id: '$page-$i',
        type: PostType.text,
        text: 'Text post Page $page',
      );
    } else if (i % 3 == 1) {
      return PostModel(
        id: '$page-$i',
        type: PostType.image,
        imageUrl: 'https://picsum.photos/400/30${i}',
        text: 'Image post Page $page',
      );
    } else {
      return PostModel(
        id: '$page-$i',
        type: PostType.video,
        text: 'Video post Page $page',
      );
    }
  });
}
