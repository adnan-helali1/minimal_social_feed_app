import 'package:json_annotation/json_annotation.dart';
import 'package:minimal_social_feed_app/core/models/posts_response_model.dart';

part 'feed_model.g.dart';

@JsonSerializable()
class Post {
  int? id;
  String? title;
  String? content;

  User? user;
  List<Media>? media;

  @JsonKey(name: 'created_at')
  String? createdAt;

  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Post({
    this.id,
    this.title,
    this.content,
    this.user,
    this.media,
    this.createdAt,
    this.updatedAt,
  });

  String get timeAgo => createdAt != null ? formatTimeAgo(createdAt!) : '';

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
