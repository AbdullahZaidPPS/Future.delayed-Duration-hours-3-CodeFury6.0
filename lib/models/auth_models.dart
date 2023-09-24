import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class Test with _$Test {
  const factory Test({
    required String username,
    required String password,
    required String refreshToken,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}

@freezed
class UserLogin with _$UserLogin {
  const factory UserLogin({
    required String username,
    required String password,
  }) = _UserLogin;

  factory UserLogin.fromJson(Map<String, dynamic> json) =>
      _$UserLoginFromJson(json);
}

@freezed
class AuthCode with _$AuthCode {
  const factory AuthCode({
    required String authToken,
  }) = _AuthCode;

  factory AuthCode.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeFromJson(json);
}
