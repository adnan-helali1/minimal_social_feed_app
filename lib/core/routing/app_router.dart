import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/features/feed/home_screen.dart';
import 'package:minimal_social_feed_app/features/login/domain/cubit/login_cubit.dart';
import 'package:minimal_social_feed_app/features/login/presentation/screens/login_screen.dart';
import 'package:minimal_social_feed_app/features/register/domain/cubit/register_cubit.dart';
import 'package:minimal_social_feed_app/features/register/presentation/screens/register_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                create: (context) => LoginCubit(getit()),
                child: const HomeScreen(),
              ),
        );

      default:
        return null;
    }
  }
}
