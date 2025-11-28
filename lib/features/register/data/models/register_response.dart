import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? message;
  bool? status;
  @JsonKey(name: 'data')
  UserData? userData;
  RegisterResponse({this.message, this.status, this.userData});
  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  Users? user;
  Tokens? tokens;
  UserData({this.user, this.tokens});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@JsonSerializable()
class Users {
  int? id;
  String? name;
  String? email;
  Users({this.id, this.name, this.email});
  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
}

@JsonSerializable()
class Tokens {
  String? tokenType;
  String? accessToken;
  String? accessTokenExpiresAt;
  String? refreshToken;
  String? refreshTokenExpireAt;

  Tokens({
    this.tokenType,
    this.accessToken,
    this.accessTokenExpiresAt,
    this.refreshToken,
    this.refreshTokenExpireAt,
  });
  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
