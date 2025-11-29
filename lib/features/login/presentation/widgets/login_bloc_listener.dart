import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimal_social_feed_app/core/helpers/extensions.dart';
import 'package:minimal_social_feed_app/core/routing/routes.dart';
import 'package:minimal_social_feed_app/core/theme/colors.dart';
import 'package:minimal_social_feed_app/core/theme/textstyles.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_cubit.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) => current != previous,

      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManegar.mainBlue,
                    ),
                  ),
            );
          },
          successed: (data) {
            context.pop();
            context.pushReplacementNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: ColorsManegar.red, size: 32),
            content: Text(error, style: TextStyles.font13BmainBluew500),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text("Got IT", style: TextStyles.font14Black500),
              ),
            ],
          ),
    );
  }
}
