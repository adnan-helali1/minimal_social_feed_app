class FeedResponseModel {
  final bool status;
  final String message;
  final List<Post> posts;
  final Pagination pagination;

  FeedResponseModel({
    required this.status,
    required this.message,
    required this.posts,
    required this.pagination,
  });

  factory FeedResponseModel.fromJson(Map<String, dynamic> json) {
    return FeedResponseModel(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      posts:
          (json['data']['posts'] as List).map((e) => Post.fromJson(e)).toList(),
      pagination: Pagination.fromJson(json['data']['pagination']),
    );
  }
}

class Post {
  final int id;
  final String title;
  final String content;
  final User user;
  final List<Media> media;
  final String createdAt;
  final String updatedAt;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.user,
    required this.media,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'] ?? '',
      content: json['content'] ?? '',
      user: User.fromJson(json['user']),
      media: (json['media'] as List).map((e) => Media.fromJson(e)).toList(),
      createdAt: json['created_at'] ?? '',
      updatedAt: json['updated_at'] ?? '',
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'] ?? '',
      email: json['email'] ?? '',
    );
  }
}

class Media {
  final int id;
  final String mediaType;
  final String url;
  final String filePath;

  Media({
    required this.id,
    required this.mediaType,
    required this.url,
    required this.filePath,
  });

  factory Media.fromJson(Map<String, dynamic> json) {
    return Media(
      id: json['id'],
      mediaType: json['media_type'] ?? '',
      url: json['url'] ?? '',
      filePath: json['file_path'] ?? '',
    );
  }
}

class Pagination {
  final int currentPage;
  final int perPage;
  final int total;
  final int lastPage;

  Pagination({
    required this.currentPage,
    required this.perPage,
    required this.total,
    required this.lastPage,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      currentPage: json['current_page'],
      perPage: json['per_page'],
      total: json['total'],
      lastPage: json['last_page'],
    );
  }
}
