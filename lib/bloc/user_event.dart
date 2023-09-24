part of 'auth_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.testing() = TestingUserEvent;
  const factory UserEvent.login({required UserLogin loginDets}) = LoginUser;
}
