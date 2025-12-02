import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/features/create_post/logic/create_post_cubit.dart';
import 'package:minimal_social_feed_app/features/create_post/logic/create_post_state.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  List<File> selectedImages = [];

  Future pickImage() async {
    final picker = ImagePicker();
    final img = await picker.pickImage(source: ImageSource.gallery);

    if (img != null) {
      setState(() {
        selectedImages.add(File(img.path));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getit<CreatePostCubit>(),
      child: BlocConsumer<CreatePostCubit, CreatePostState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (post) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Post Created Successfully!")),
              );
              Navigator.pop(context);
            },
            error: (msg) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(msg)));
            },
          );
        },
        builder: (context, state) {
          final cubit = context.read<CreatePostCubit>();

          return Scaffold(
            appBar: AppBar(title: const Text("Create Post")),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: "Title"),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: contentController,
                    maxLines: 5,
                    decoration: const InputDecoration(labelText: "Content"),
                  ),
                  const SizedBox(height: 12),

                  /// Images Preview
                  Wrap(
                    spacing: 8,
                    children:
                        selectedImages
                            .map(
                              (file) => Stack(
                                children: [
                                  Image.file(
                                    file,
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    top: -5,
                                    right: -5,
                                    child: IconButton(
                                      icon: const Icon(Icons.close, size: 20),
                                      onPressed: () {
                                        setState(
                                          () => selectedImages.remove(file),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                  ),

                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: pickImage,
                    child: const Text("Add Image"),
                  ),
                  const SizedBox(height: 20),

                  state.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse:
                        () => ElevatedButton(
                          onPressed: () async {
                            final media = await Future.wait(
                              selectedImages.map(
                                (file) async => MultipartFile.fromFile(
                                  file.path,
                                  filename: file.path.split("/").last,
                                ),
                              ),
                            );

                            cubit.createPost(
                              title: titleController.text.trim(),
                              content: contentController.text.trim(),
                              media: media,
                            );
                          },
                          child: const Text("Publish"),
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
