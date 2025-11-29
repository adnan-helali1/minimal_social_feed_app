import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    testFeed();
  }

  void testFeed() async {
    final repo = FeedRepo(ApiService(DioFactory.getDio()));

    final result = await repo.feedRepo();

    result.when(
      success: (data) {
        print("SUCCESS ✔");
        print("عدد البوستات: ${data.posts.length}");
        print("عنوان أول بوست: ${data.posts.first.title}");
      },
      failure: (error) {
        print("FAILED ❌");
        print(error.apiErrorModel.message);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Check console")));
  }
}
