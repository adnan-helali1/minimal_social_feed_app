// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:minimal_social_feed_app/features/feed/data/models/feed_response.dart';
// import 'package:minimal_social_feed_app/features/feed/domain/feed_cubit.dart';
// import 'package:minimal_social_feed_app/features/feed/domain/feed_state.dart';
// import 'package:minimal_social_feed_app/features/feed/presentation/widgets/listviewstate.dart';

// class FeedScreen extends StatefulWidget {
//   const FeedScreen({super.key});

//   @override
//   State<FeedScreen> createState() => _FeedScreenState();
// }

// class _FeedScreenState extends State<FeedScreen> {
//   final ScrollController _scrollController = ScrollController();
//   int page = 1;

//   @override
//   void initState() {
//     super.initState();

//     /// أول مرة تحميل
//     context.read<FeedCubit>().getfeed(page: page);

//     _scrollController.addListener(() {
//       if (_scrollController.position.pixels >=
//           _scrollController.position.maxScrollExtent - 150) {
//         page++;
//         context.read<FeedCubit>().getfeed(page: page);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Feed")),
//       body: BlocBuilder<FeedCubit, FeedState>(
//         builder: (context, state) {
//           return state.when(
//             initial: () => const SizedBox.shrink(),

//             feedloading: () => const Center(child: CircularProgressIndicator()),
//              feedSuccess: (posts , ) {
//                return Listviewstate(dataPostList: posts , controller: _scrollController, hasMore: hasmore);
//              },

//             // feedSuccess: (posts, hasMore) {
//             //   return Listviewstate(
//             //     controller: _scrollController,
//             //     dataPostList: posts,
//             //     hasMore: hasMore,
//             //   );
//             // },

//             feederror: (error) => Center(child: Text(error as String)),
//           );
//         },
//       ),
//     );
//   }
// }
