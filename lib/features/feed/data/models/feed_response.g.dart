// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedResponse _$FeedResponseFromJson(Map<String, dynamic> json) => FeedResponse(
      message: json['message'] as String?,
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeedResponseToJson(FeedResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Posts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'posts': instance.posts,
    };

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      postId: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      content: json['content'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'id': instance.postId,
      'title': instance.title,
      'content': instance.content,
      'user': instance.user,
      'media': instance.media,
      'createdAt': instance.createdAt,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      userId: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
    )..user = json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'user': instance.user,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      mediaId: (json['id'] as num?)?.toInt(),
      mediaType: json['mediaType'] as String?,
      url: json['url'] as String?,
      filePath: json['filePath'] as String?,
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.mediaId,
      'mediaType': instance.mediaType,
      'url': instance.url,
      'filePath': instance.filePath,
    };
