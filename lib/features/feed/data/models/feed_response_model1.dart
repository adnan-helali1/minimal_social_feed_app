import 'package:json_annotation/json_annotation.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_model.dart';

part 'feed_response_model1.g.dart';

@JsonSerializable()
class FeedResponseModel {
  bool? status;
  String? message;

  @JsonKey(name: 'data')
  DataWrapper? data;

  FeedResponseModel({this.status, this.message, this.data});

  factory FeedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseModelFromJson(json);
}

@JsonSerializable()
class DataWrapper {
  List<Post>? posts;
  Pagination? pagination;

  DataWrapper({this.posts, this.pagination});

  factory DataWrapper.fromJson(Map<String, dynamic> json) =>
      _$DataWrapperFromJson(json);
}
