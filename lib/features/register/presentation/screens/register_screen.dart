import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/helpers/spacing.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/core/widgets/app_text_button.dart';
import 'package:minimal_social_feed_app/features/register/data/models/register_request_body.dart';
import 'package:minimal_social_feed_app/features/register/domain/cubit/register_cubit.dart';
import 'package:minimal_social_feed_app/features/register/presentation/widgets/register_bloc_listener.dart';
import 'package:minimal_social_feed_app/features/register/presentation/widgets/register_fields.dart';
import 'package:minimal_social_feed_app/features/register/presentation/widgets/text_footer.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManegar.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 22),
          child: ListView(
            //   mainAxisAlignment: MainAxisAlignment.start,
            children: [
              verticalSpace(20.h),
              RegisterFields(),
              //Register Button
              verticalSpace(50.h),
              AppTextButton(
                buttonText: 'Register',
                textStyle: TextStyles.font20whitew600,
                onPressed: () {
                  validateThenDoRegister(context);
                },
                backgroundColor: ColorsManegar.mainBlue,
                borderRadius: 30,
                buttonHeight: 55.h,
              ),
              //Already have an account
              verticalSpace(20.h),
              TextFooter(nextPageName: Routes.logInScreen, textSpan: 'Login'),
              RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    context.read<RegisterCubit>().emitRegisterState(
      RegisterRequestBody(
        username: context.read<RegisterCubit>().usernamecontroller.text,
        email: context.read<RegisterCubit>().emailcontroller.text,
        password: context.read<RegisterCubit>().passwordlcontroller.text,
      ),
    );
  }
}
