import 'package:json_annotation/json_annotation.dart';
import 'package:minimal_social_feed_app/core/models/posts_response_model.dart';

part 'single_post_response_model.g.dart';

@JsonSerializable()
class SinglePostResponseModel {
  bool? status;
  String? message;

  @JsonKey(name: 'data')
  SingleDataWrapper? data;

  SinglePostResponseModel({this.status, this.message, this.data});

  factory SinglePostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SinglePostResponseModelFromJson(json);
}

@JsonSerializable()
class SingleDataWrapper {
  Pagination? pagination;

  int? id;
  String? title;
  String? content;

  User? user;
  List<Media>? media;

  @JsonKey(name: 'created_at')
  String? createdAt;

  @JsonKey(name: 'updated_at')
  String? updatedAt;

  SingleDataWrapper({
    this.id,
    this.title,
    this.content,
    this.user,
    this.media,
    this.createdAt,
    this.updatedAt,
    this.pagination,
  });

  String get timeAgo => createdAt != null ? formatTimeAgo(createdAt!) : '';

  factory SingleDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$SingleDataWrapperFromJson(json);
}
