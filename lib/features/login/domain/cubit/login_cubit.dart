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
    print("🚀 دخلنا الكيوبيت");

    emit(const LoginState.loading());

    try {
      final response = await _loginRepo.login(loginRequestBody);

      print("✅ وصل الرد من الريبو: $response");

      response.when(
        success: (data) {
          print("✅ Success وصل");
          emit(LoginState.successed(data));
        },
        failure: (error) {
          print("❌ Failure وصل");
          emit(
            LoginState.error(
              error: error.apiErrorModel.message ?? "Unknown error",
            ),
          );
        },
      );
    } catch (e) {
      print("🔥 EXCEPTION: $e");
      emit(const LoginState.error(error: "Exception happened"));
    }
  }
}
