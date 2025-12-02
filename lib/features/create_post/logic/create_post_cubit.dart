import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'create_post_state.dart';
import '../data/create_post_repo.dart';

class CreatePostCubit extends Cubit<CreatePostState> {
  final CreatePostRepo _repo;

  CreatePostCubit(this._repo) : super(const CreatePostState.initial());

  Future<void> createPost({
    required String title,
    required String content,
    required List<MultipartFile> media,
  }) async {
    emit(const CreatePostState.loading());

    final result = await _repo.createPost(
      title: title,
      content: content,
      media: media,
    );

    result.when(
      success: (post) => emit(CreatePostState.success(post)),
      failure:
          (error) => emit(CreatePostState.error(error.apiErrorModel.message)),
    );
  }
}
