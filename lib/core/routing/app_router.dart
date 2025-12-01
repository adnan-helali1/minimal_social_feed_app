import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/features/feed/logic/feed_cubit.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/screens/home_screen.dart';
import 'package:minimal_social_feed_app/features/feed/presentation/screens/pdf_view_screen.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_cubit.dart';
import 'package:minimal_social_feed_app/features/login/presentation/screens/login_screen.dart';
import 'package:minimal_social_feed_app/features/register/logic/register_cubit.dart';
import 'package:minimal_social_feed_app/features/register/presentation/screens/register_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/features/single_post/logic/single_post_cubit.dart';
import 'package:minimal_social_feed_app/features/single_post/presentation/screens/single_post_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registersScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => RegisterCubit(getit()),
                child: const RegisterScreen(),
              ),
        );
      case Routes.logInScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => LoginCubit(getit()),
                child: const LoginScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => FeedCubit(getit()),
                child: const HomeScreen(),
              ),
        );
      case Routes.singlepostscreen:
        // جلب postId اللي بعثناه من FeedCard عند double tap
        final postId = settings.arguments as int;

        return MaterialPageRoute(
          builder: (_) => SinglePostScreen(postId: postId),
        );
      default:
        return null;
    }
  }
}
