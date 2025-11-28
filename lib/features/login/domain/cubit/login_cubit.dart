import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_social_feed_app/features/login/data/repos/login_repo.dart';
import 'package:minimal_social_feed_app/features/login/domain/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordlcontroller = TextEditingController();

  // void emitLoginState(loginRequestBody) async {
  //   emit(const LoginState.loading());
  //   final response = await _loginRepo.login(loginRequestBody);
  //   print("✅ API RESULT:ssssssssssssssssssaaaaaaaaaaaas $response");

  //   response.when(
  //     success: (loginResponse) {
  //       emit(LoginState.successed(loginResponse));
  //       print("✅ API RESULT:ssssssssssssssssssaaaaaaaaaaaas $response");
  //     },
  //     failure: (error) {
  //       print("✅ API RESULT:ssssssssssssssssssaaaaaaaaaaaas $response");

  //       emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
  //     },
  //   );
  // }
  Future<void> emitLoginState(loginRequestBody) async {
    emit(const LoginState.loading());

    try {
      final response = await _loginRepo.login(loginRequestBody);

      response.when(
        success: (data) {
          emit(LoginState.successed(data));
        },
        failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message));
        },
      );
    } catch (e) {
      emit(const LoginState.error(error: "Exception happenedsss"));
    }
  }
}
