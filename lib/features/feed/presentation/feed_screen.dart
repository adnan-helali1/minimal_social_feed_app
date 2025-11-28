import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/domain/feed_cubit.dart';
import 'package:minimal_social_feed_app/features/feed/domain/feed_state.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/post_model.dart';
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
    return Scaffold(
      appBar: AppBar(title: const Text("Feed")),
      body: Column(
        children: [
          BlocBuilder<FeedCubit, FeedState>(
            buildWhen:
                (previous, current) =>
                    current is FeedLoading ||
                    current is FeedSuccess ||
                    current is FeedError,

            builder: (context, state) {
              return state.maybeWhen(
                feedloading: () {
                  return SizedBox(
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
                feedSuccess: (feedResponse) {
                  var feedList = feedResponse.data!.posts;
                  return SizedBox();
                  // return Listviewstate(dataPostList: feedList ?? [], );
                },
                feederror: (errorHandler) {
                  return SizedBox.shrink();
                },
                orElse: () => const SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
    );
  }
}
