import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_card.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/leest_of_posts.dart';

class Listviewstate extends StatefulWidget {
  final List<Posts> dataPostList;

  const Listviewstate({
    super.key,
    required this.dataPostList,
    required ScrollController controller,
    required hasMore,
  });

  @override
  State<Listviewstate> createState() =>
  // ignore: no_logic_in_create_state
  _ListviewstateState(dataPostList: List.empty());
}

class _ListviewstateState extends State<Listviewstate> {
  final ScrollController _scrollController = ScrollController();
  final List<Posts> dataPostList;

  List<PostModel> posts = [];
  bool isLoading = false;
  int page = 1;
  bool hasMore = true;

  _ListviewstateState({required this.dataPostList});

  //_KistviewState({required this.DataPostList}); // لما ما يبقى بيانات

  @override
  void initState() {
    super.initState();
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
    return ListView.builder(
      controller: _scrollController,
      itemCount: posts.length + 1,
      itemBuilder: (context, index) {
        // عرض بوست
        PostCard(post: posts[index], postsData: dataPostList[index]);

        return const SizedBox();
      },
    );
    ;
  }
}
