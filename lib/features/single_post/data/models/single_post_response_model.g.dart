// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SinglePostResponseModel _$SinglePostResponseModelFromJson(
        Map<String, dynamic> json) =>
    SinglePostResponseModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SingleDataWrapper.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SinglePostResponseModelToJson(
        SinglePostResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

SingleDataWrapper _$SingleDataWrapperFromJson(Map<String, dynamic> json) =>
    SingleDataWrapper(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      content: json['content'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SingleDataWrapperToJson(SingleDataWrapper instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'user': instance.user,
      'media': instance.media,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
