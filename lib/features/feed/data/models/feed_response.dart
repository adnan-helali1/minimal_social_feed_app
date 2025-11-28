import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_response.g.dart';

@JsonSerializable()
class FeedResponse {
  String? message;
  bool? status;
  Data? data;
  FeedResponse({this.message, this.status, this.data});
  factory FeedResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseFromJson(json);
}

@JsonSerializable()
class Data {
  List<Posts?>? posts;
  Data({this.posts});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable()
class Posts {
  @JsonKey(name: 'id')
  int? postId;
  String? title;
  String? content;
  User? user;
  List<Media?>? media;
  String? createdAt;
  Posts({
    this.postId,
    this.title,
    this.content,
    this.media,
    this.user,
    this.createdAt,
  });
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}

@JsonSerializable()
class User {
  @JsonKey(name: 'id')
  int? userId;
  String? name;
  String? email;
  User? user;
  User({this.userId, this.name, this.email});
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class Media {
  @JsonKey(name: 'id')
  int? mediaId;
  String? mediaType;
  String? url;
  String? filePath;

  Media({this.mediaId, this.mediaType, this.url, this.filePath});
  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}
