import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_social_feed_app/core/helpers/constants.dart';
import 'package:minimal_social_feed_app/core/helpers/shared_pref_helper.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/login/data/models/login_request_body.dart';
import 'package:minimal_social_feed_app/features/login/data/repos/login_repo.dart';
import 'package:minimal_social_feed_app/features/login/domain/cubit/login_state.dart';

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
          await saveUserToken(
            loginResponse.userData?.tokens?.accessToken ?? '',
          );

          emit(LoginState.successed(loginResponse));
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message));
        },
      );
    } catch (e) {
      emit(const LoginState.error(error: "Exception happenedsss"));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefsKey.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
