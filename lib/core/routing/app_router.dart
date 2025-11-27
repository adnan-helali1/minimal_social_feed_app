import 'package:flutter/material.dart';
import 'package:minimal_social_feed_app/core/di/dependency_injection.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/features/login/domain/cubit/login_cubit.dart';
import 'package:minimal_social_feed_app/features/login/presentation/screens/login_screen.dart';
import 'package:minimal_social_feed_app/features/auth/presentation/screens/register_screen.dart';
import 'package:minimal_social_feed_app/features/home/presentation/home_screem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registersScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getit<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreem());

      default:
        return MaterialPageRoute(
          builder:
              (_) =>
                  const Scaffold(body: Center(child: Text("Page not found"))),
        );
    }
  }
}
