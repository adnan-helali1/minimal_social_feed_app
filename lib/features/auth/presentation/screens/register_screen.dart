import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/helpers/extensions.dart';
import 'package:minimal_social_feed_app/core/helpers/spacing.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/core/widgets/app_text_button.dart';
import 'package:minimal_social_feed_app/core/widgets/app_text_form_field.dart';
import 'package:minimal_social_feed_app/features/auth/presentation/widgets/text_footer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // TextEditingController passwordController;
  bool isObscure = false;

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
              Align(
                alignment: Alignment.center,
                child: Text('Register', style: TextStyles.font24BmainBlueBold),
              ),
              verticalSpace(20.h),
              //Username field
              Text("Username", style: TextStyles.font18Black600),
              verticalSpace(10.h),
              AppTextFormField(
                validator: (p0) {},

                hintText: 'Enter Your Name',
                hintStyle: TextStyles.font14Black500,
                inputTextStyle: TextStyles.font12bluegreykw600,
                backgroundColor: Colors.white70,
              ),
              verticalSpace(20.h),
              //Email field
              Text("Email", style: TextStyles.font18Black600),
              verticalSpace(10.h),

              AppTextFormField(
                validator: (p0) {},
                hintText: 'Enter Your Email',
                hintStyle: TextStyles.font14Black500,
                inputTextStyle: TextStyles.font12bluegreykw600,
                backgroundColor: Colors.white70,
              ),
              verticalSpace(20.h),
              //password field
              Text("Passowrd", style: TextStyles.font18Black600),
              verticalSpace(10.h),
              AppTextFormField(
                validator: (p0) {},

                hintText: 'Enter Your Passowrd',
                hintStyle: TextStyles.font14Black500,
                inputTextStyle: TextStyles.font12bluegreykw600,
                backgroundColor: Colors.white70,
                isObscureText: isObscure,
                controller: TextEditingController(),
                suffixIcon: IconButton(
                  icon: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                ),
              ),
              //Register Button
              verticalSpace(50.h),
              AppTextButton(
                buttonText: 'Register',
                textStyle: TextStyles.font20whitew600,
                onPressed: () {
                  context.pushReplacementNamed(Routes.homeScreen);
                },
                backgroundColor: ColorsManegar.mainBlue,
                borderRadius: 30,
                buttonHeight: 55.h,
              ),
              //Already have an account
              verticalSpace(20.h),
              TextFooter(nextPageName: Routes.logInScreen, textSpan: 'Login'),
            ],
          ),
        ),
      ),
    );
  }
}
