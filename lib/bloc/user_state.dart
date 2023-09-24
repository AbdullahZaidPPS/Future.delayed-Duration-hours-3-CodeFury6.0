part of 'auth_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = loading;
  const factory UserState.test({required Test test}) = Testing;
  const factory UserState.login({required AuthCode authToken}) = LoginSuccess;
}
