import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_social_feed_app/core/helpers/constants.dart';
import 'package:minimal_social_feed_app/core/helpers/shared_pref_helper.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/login/data/models/login_request_body.dart';
import 'package:minimal_social_feed_app/features/login/data/models/login_response.dart';
import 'package:minimal_social_feed_app/features/login/data/repos/login_repo.dart';
import 'package:minimal_social_feed_app/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordlcontroller = TextEditingController();

  Future<void> emitLoginState() async {
    emit(const LoginState.loading());

    try {
      final response = await _loginRepo.login(
        LoginRequestBody(
          email: emailcontroller.text,
          password: passwordlcontroller.text,
        ),
      );

      response.when(
        success: (loginResponse) async {
          /// خزن التوكينات بشكل صحيح
          await saveUserTokens(loginResponse);

          emit(LoginState.successed(loginResponse));
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message));
        },
      );
    } catch (e) {
      emit(const LoginState.error(error: "Exception happened"));
    }
  }

  // الدالة الصحيحة
  Future<void> saveUserTokens(LoginResponse loginResponse) async {
    final tokens = loginResponse.userData?.tokens;

    if (tokens == null) {
      throw Exception("Tokens are null in LoginResponse");
    }

    final access = tokens.accessToken ?? "";
    final refresh = tokens.refreshToken ?? "";

    // Save tokens
    await SharedPrefHelper.setSecuredString(SharedPrefsKey.userToken, access);

    await SharedPrefHelper.setSecuredString(
      SharedPrefsKey.refreshToken,
      refresh,
    );

    // Set dio header
    DioFactory.setTokenIntoHeaderAfterLogin(access);
  }
}
