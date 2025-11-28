enum PostType { text, image, video }

class PostModel {
  final String id;
  final PostType type;
  final String? text;
  final String? imageUrl;
  final String? videoUrl;

  PostModel({
    required this.id,
    required this.type,
    this.text,
    this.imageUrl,
    this.videoUrl,
  });
}
