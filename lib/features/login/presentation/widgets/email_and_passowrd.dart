import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:minimal_social_feed_app/core/helpers/spacing.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/core/widgets/app_text_form_field.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_cubit.dart';

class EmailAndPassowrd extends StatefulWidget {
  const EmailAndPassowrd({super.key});

  @override
  State<EmailAndPassowrd> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<EmailAndPassowrd> {
  bool isObscure = false;
  late TextEditingController passowrdController;
  late TextEditingController emailController;

  @override
  void initState() {
    passowrdController = context.read<LoginCubit>().passwordlcontroller;
    emailController = context.read<LoginCubit>().emailcontroller;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Email", style: TextStyles.font18Black600),
          ),
          verticalSpace(10.h),
          AppTextFormField(
            validator: (p0) {},
            controller: emailController,
            hintText: 'Enter Your Email',
            hintStyle: TextStyles.font14Black500,
            inputTextStyle: TextStyles.font12bluegreykw600,
            backgroundColor: Colors.white70,
          ),
          verticalSpace(20.h),
          //password field
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Passowrd", style: TextStyles.font18Black600),
          ),
          verticalSpace(10.h),
          AppTextFormField(
            validator: (p0) {},
            hintText: 'Enter Your Passowrd',
            hintStyle: TextStyles.font14Black500,
            inputTextStyle: TextStyles.font12bluegreykw600,
            backgroundColor: Colors.white70,
            isObscureText: isObscure,
            controller: passowrdController,
            suffixIcon: IconButton(
              icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
