import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/1.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/2.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/leest_of_posts.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final ScrollController _scrollController = ScrollController();

  List<PostModel> posts = [];
  bool isLoading = false;
  int page = 1;
  bool hasMore = true; // لما ما يبقى بيانات

  @override
  void initState() {
    scrollController();
  }

  void scrollController() {
    super.initState();

    loadPosts();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent - 150 &&
          !isLoading &&
          hasMore) {
        loadPosts();
      }
    });
  }

  Future<void> loadPosts() async {
    setState(() => isLoading = true);

    // هون لاحقاً بتحط API
    await Future.delayed(const Duration(seconds: 1));

    List<PostModel> newPosts = fakePosts(page);

    if (newPosts.isEmpty) {
      hasMore = false; // انتهت البيانات
    } else {
      posts.addAll(newPosts);
      page++;
    }

    setState(() => isLoading = false);
  }

  // بيانات وهمية بدلاً عن API

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feed")),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: posts.length + 1,
        itemBuilder: (context, index) {
          // عرض بوست
          if (index < posts.length) {
            return PostCard(post: posts[index]);
          }

          // اللودر
          if (isLoading) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          // ما في بيانات أكثر
          if (!hasMore) {
            return const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: Text('No more posts')),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
