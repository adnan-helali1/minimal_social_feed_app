import 'package:json_annotation/json_annotation.dart';
import 'package:timeago/timeago.dart' as timeago;

part 'feed_model.g.dart';

String formatTimeAgo(String dateString) {
  final date = DateTime.parse(dateString).toLocal();
  return timeago.format(date, locale: 'ar');
}

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

@JsonSerializable()
class User {
  int? id;
  String? name;
  String? email;

  User({this.id, this.name, this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class Media {
  int? id;

  @JsonKey(name: 'media_type')
  String? mediaType;

  String? url;

  @JsonKey(name: 'file_path')
  String? filePath;

  Media({this.id, this.mediaType, this.url, this.filePath});

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@JsonSerializable()
class Pagination {
  @JsonKey(name: 'current_page')
  int? currentPage;

  @JsonKey(name: 'per_page')
  int? perPage;

  int? total;

  @JsonKey(name: 'last_page')
  int? lastPage;

  Pagination({this.currentPage, this.perPage, this.total, this.lastPage});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
