import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String email;
  final String password;
  @JsonKey(name: 'name')
  final String username;

  RegisterRequestBody({
    required this.username,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
