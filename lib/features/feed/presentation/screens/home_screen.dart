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
  @override
  void initState() {
    super.initState();

    // اطلب من الـ cubit يجيب البوستات
    final feedCubit = BlocProvider.of<FeedCubit>(context);
    feedCubit.getfeed(page: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feed')),
      body: BlocBuilderFeed(),
    );
  }
}
