import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:minimal_social_feed_app/features/register/data/repos/register_repo.dart';
import 'package:minimal_social_feed_app/features/register/domain/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordlcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();

  Future<void> emitRegisterState(registerRequestBody) async {
    emit(const RegisterState.loading());

    try {
      final response = await _registerRepo.register(registerRequestBody);

      response.when(
        success: (data) {
          emit(RegisterState.successed(data));
        },
        failure: (error) {
          emit(RegisterState.error(error: error.apiErrorModel.message));
        },
      );
    } catch (e) {
      emit(const RegisterState.error(error: "Exception happenedsss"));
    }
  }
}
