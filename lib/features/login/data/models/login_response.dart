import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  bool? status;
  @JsonKey(name: 'data')
  UserData? userData;
  LoginResponse({this.message, this.status, this.userData});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
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
  @JsonKey(name: 'token_type')
  String? tokenType;

  @JsonKey(name: 'access_token')
  String? accessToken;

  @JsonKey(name: 'access_token_expires_at')
  String? accessTokenExpiresAt;

  @JsonKey(name: 'refresh_token')
  String? refreshToken;

  @JsonKey(name: 'refresh_token_expires_at')
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
