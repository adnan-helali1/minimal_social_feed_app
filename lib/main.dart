import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/core/routing/app_router.dart';
import 'package:minimal_social_feed_app/social_app.dart';

void main() {
  setupGetit();
  runApp(SocialApp(appRouter: AppRouter()));
}
