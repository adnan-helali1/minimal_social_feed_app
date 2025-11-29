import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = loading;
  const factory RegisterState.successed(T data) = Successed<T>;
  const factory RegisterState.error({required String error}) = Error;
}
