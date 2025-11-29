import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/widgets/bloc_builder_feed.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    final feedCubit = BlocProvider.of<FeedCubit>(context);
    feedCubit.getfeed(page: 1);

    _scrollController.addListener(() {
      // when it going to finish
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 400) {
        feedCubit.loadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed')),
      body: BlocBuilderFeed(scrollController: _scrollController),
    );
  }
}
