import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/routing/app_router.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/main.dart';

class SocialApp extends StatelessWidget {
  final AppRouter appRouter;
  const SocialApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 730),
      minTextAdapt: true,

      child: MaterialApp(
        onGenerateRoute: AppRouter().generateRoute,
        //  initialRoute: Routes.singlepostscreen,
        initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.logInScreen,
        debugShowCheckedModeBanner: false,
        title: 'socialmedia App',
        theme: ThemeData(primaryColor: ColorsManegar.mainBlue),
      ),
    );
  }
}
