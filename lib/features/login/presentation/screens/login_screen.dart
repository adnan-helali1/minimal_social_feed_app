import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/helpers/spacing.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/core/widgets/app_text_button.dart';
import 'package:minimal_social_feed_app/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:minimal_social_feed_app/features/register/presentation/widgets/text_footer.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_cubit.dart';
import 'package:minimal_social_feed_app/features/login/presentation/widgets/email_and_passowrd.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 22),
          child: ListView(
            children: [
              verticalSpace(20.h),
              Align(
                alignment: Alignment.center,
                child: Text('Log In ', style: TextStyles.font24BmainBlueBold),
              ),
              verticalSpace(20.h),

              //Email field
              EmailAndPassowrd(),
              //Register Button
              verticalSpace(80.h),
              AppTextButton(
                buttonText: 'Log In',
                textStyle: TextStyles.font20whitew600,
                onPressed: () {
                  validateThenDoLogin(context);
                },
                backgroundColor: ColorsManegar.mainBlue,
                borderRadius: 30,
                buttonHeight: 55.h,
              ),
              //Already have an account
              verticalSpace(20.h),
              TextFooter(
                nextPageName: Routes.registersScreen,
                textSpan: 'Register',
                firstWord: 'Dont',
              ),
              LoginBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    context.read<LoginCubit>().emitLoginState();
  }
}
