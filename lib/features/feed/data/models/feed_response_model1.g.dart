// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response_model1.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedResponseModel _$FeedResponseModelFromJson(Map<String, dynamic> json) =>
    FeedResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataWrapper.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedResponseModelToJson(FeedResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

DataWrapper _$DataWrapperFromJson(Map<String, dynamic> json) => DataWrapper(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataWrapperToJson(DataWrapper instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'pagination': instance.pagination,
    };
