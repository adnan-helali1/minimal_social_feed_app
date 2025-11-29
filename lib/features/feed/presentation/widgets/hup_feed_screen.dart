// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:minimal_social_feed_app/features/feed/logic/feed_cubit.dart';
// import 'package:minimal_social_feed_app/features/feed/logic/feed_state.dart';
// import 'package:minimal_social_feed_app/features/feed/presentation/widgets/bloc_builder_feed.dart';

// class FeedScreen extends StatefulWidget {
//   const FeedScreen({super.key});

//   @override
//   State<FeedScreen> createState() => _FeedScreenState();
// }

// class _FeedScreenState extends State<FeedScreen> {
//   final ScrollController _scrollController = ScrollController();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   scrollController();
//   // }

//   // void scrollController() {
//   //   super.initState();

//   //   loadPosts();

//   //   _scrollController.addListener(() {
//   //     if (_scrollController.position.pixels >=
//   //             _scrollController.position.maxScrollExtent - 150) {
//   //       loadPosts();
//   //     }
//   //   });
//   // }

//   // // Future<void> loadPosts() async {
//   // //   setState(() => isLoading = true);

//   // //   // هون لاحقاً بتحط API
//   // //   await Future.delayed(const Duration(seconds: 1));

//   // //   List<PostModel> newPosts = fakePosts(page);

//   // //   if (newPosts.isEmpty) {
//   // //     hasMore = false; // انتهت البيانات
//   // //   } else {
//   // //     posts.addAll(newPosts);
//   // //     page++;
//   // //   }

//   // //   setState(() => isLoading = false);
//   // // }

//   // // بيانات وهمية بدلاً عن API

//   // @override
//   // void dispose() {
//   //   _scrollController.dispose();
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Feed")),
//       body: ListView(children: [BlocBuilderFeed()]),
//     );
//   }
// }
