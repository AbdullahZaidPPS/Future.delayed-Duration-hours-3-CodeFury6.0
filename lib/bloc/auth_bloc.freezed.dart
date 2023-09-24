// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testing,
    required TResult Function(UserLogin loginDets) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testing,
    TResult? Function(UserLogin loginDets)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testing,
    TResult Function(UserLogin loginDets)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestingUserEvent value) testing,
    required TResult Function(LoginUser value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestingUserEvent value)? testing,
    TResult? Function(LoginUser value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestingUserEvent value)? testing,
    TResult Function(LoginUser value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TestingUserEventCopyWith<$Res> {
  factory _$$TestingUserEventCopyWith(
          _$TestingUserEvent value, $Res Function(_$TestingUserEvent) then) =
      __$$TestingUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TestingUserEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$TestingUserEvent>
    implements _$$TestingUserEventCopyWith<$Res> {
  __$$TestingUserEventCopyWithImpl(
      _$TestingUserEvent _value, $Res Function(_$TestingUserEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TestingUserEvent implements TestingUserEvent {
  const _$TestingUserEvent();

  @override
  String toString() {
    return 'UserEvent.testing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TestingUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testing,
    required TResult Function(UserLogin loginDets) login,
  }) {
    return testing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testing,
    TResult? Function(UserLogin loginDets)? login,
  }) {
    return testing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testing,
    TResult Function(UserLogin loginDets)? login,
    required TResult orElse(),
  }) {
    if (testing != null) {
      return testing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestingUserEvent value) testing,
    required TResult Function(LoginUser value) login,
  }) {
    return testing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestingUserEvent value)? testing,
    TResult? Function(LoginUser value)? login,
  }) {
    return testing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestingUserEvent value)? testing,
    TResult Function(LoginUser value)? login,
    required TResult orElse(),
  }) {
    if (testing != null) {
      return testing(this);
    }
    return orElse();
  }
}

abstract class TestingUserEvent implements UserEvent {
  const factory TestingUserEvent() = _$TestingUserEvent;
}

/// @nodoc
abstract class _$$LoginUserCopyWith<$Res> {
  factory _$$LoginUserCopyWith(
          _$LoginUser value, $Res Function(_$LoginUser) then) =
      __$$LoginUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserLogin loginDets});

  $UserLoginCopyWith<$Res> get loginDets;
}

/// @nodoc
class __$$LoginUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoginUser>
    implements _$$LoginUserCopyWith<$Res> {
  __$$LoginUserCopyWithImpl(
      _$LoginUser _value, $Res Function(_$LoginUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginDets = null,
  }) {
    return _then(_$LoginUser(
      loginDets: null == loginDets
          ? _value.loginDets
          : loginDets // ignore: cast_nullable_to_non_nullable
              as UserLogin,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLoginCopyWith<$Res> get loginDets {
    return $UserLoginCopyWith<$Res>(_value.loginDets, (value) {
      return _then(_value.copyWith(loginDets: value));
    });
  }
}

/// @nodoc

class _$LoginUser implements LoginUser {
  const _$LoginUser({required this.loginDets});

  @override
  final UserLogin loginDets;

  @override
  String toString() {
    return 'UserEvent.login(loginDets: $loginDets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUser &&
            (identical(other.loginDets, loginDets) ||
                other.loginDets == loginDets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginDets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserCopyWith<_$LoginUser> get copyWith =>
      __$$LoginUserCopyWithImpl<_$LoginUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() testing,
    required TResult Function(UserLogin loginDets) login,
  }) {
    return login(loginDets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? testing,
    TResult? Function(UserLogin loginDets)? login,
  }) {
    return login?.call(loginDets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? testing,
    TResult Function(UserLogin loginDets)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(loginDets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TestingUserEvent value) testing,
    required TResult Function(LoginUser value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TestingUserEvent value)? testing,
    TResult? Function(LoginUser value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TestingUserEvent value)? testing,
    TResult Function(LoginUser value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginUser implements UserEvent {
  const factory LoginUser({required final UserLogin loginDets}) = _$LoginUser;

  UserLogin get loginDets;
  @JsonKey(ignore: true)
  _$$LoginUserCopyWith<_$LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Test test) test,
    required TResult Function(AuthCode authToken) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Test test)? test,
    TResult? Function(AuthCode authToken)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Test test)? test,
    TResult Function(AuthCode authToken)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loading value) loading,
    required TResult Function(Testing value) test,
    required TResult Function(LoginSuccess value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loading value)? loading,
    TResult? Function(Testing value)? test,
    TResult? Function(LoginSuccess value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loading value)? loading,
    TResult Function(Testing value)? test,
    TResult Function(LoginSuccess value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$loadingCopyWith<$Res> {
  factory _$$loadingCopyWith(_$loading value, $Res Function(_$loading) then) =
      __$$loadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$loading>
    implements _$$loadingCopyWith<$Res> {
  __$$loadingCopyWithImpl(_$loading _value, $Res Function(_$loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loading implements loading {
  const _$loading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Test test) test,
    required TResult Function(AuthCode authToken) login,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Test test)? test,
    TResult? Function(AuthCode authToken)? login,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Test test)? test,
    TResult Function(AuthCode authToken)? login,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loading value) loading,
    required TResult Function(Testing value) test,
    required TResult Function(LoginSuccess value) login,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loading value)? loading,
    TResult? Function(Testing value)? test,
    TResult? Function(LoginSuccess value)? login,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loading value)? loading,
    TResult Function(Testing value)? test,
    TResult Function(LoginSuccess value)? login,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loading implements UserState {
  const factory loading() = _$loading;
}

/// @nodoc
abstract class _$$TestingCopyWith<$Res> {
  factory _$$TestingCopyWith(_$Testing value, $Res Function(_$Testing) then) =
      __$$TestingCopyWithImpl<$Res>;
  @useResult
  $Res call({Test test});

  $TestCopyWith<$Res> get test;
}

/// @nodoc
class __$$TestingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$Testing>
    implements _$$TestingCopyWith<$Res> {
  __$$TestingCopyWithImpl(_$Testing _value, $Res Function(_$Testing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? test = null,
  }) {
    return _then(_$Testing(
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as Test,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TestCopyWith<$Res> get test {
    return $TestCopyWith<$Res>(_value.test, (value) {
      return _then(_value.copyWith(test: value));
    });
  }
}

/// @nodoc

class _$Testing implements Testing {
  const _$Testing({required this.test});

  @override
  final Test test;

  @override
  String toString() {
    return 'UserState.test(test: $test)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Testing &&
            (identical(other.test, test) || other.test == test));
  }

  @override
  int get hashCode => Object.hash(runtimeType, test);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestingCopyWith<_$Testing> get copyWith =>
      __$$TestingCopyWithImpl<_$Testing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Test test) test,
    required TResult Function(AuthCode authToken) login,
  }) {
    return test(this.test);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Test test)? test,
    TResult? Function(AuthCode authToken)? login,
  }) {
    return test?.call(this.test);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Test test)? test,
    TResult Function(AuthCode authToken)? login,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this.test);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loading value) loading,
    required TResult Function(Testing value) test,
    required TResult Function(LoginSuccess value) login,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loading value)? loading,
    TResult? Function(Testing value)? test,
    TResult? Function(LoginSuccess value)? login,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loading value)? loading,
    TResult Function(Testing value)? test,
    TResult Function(LoginSuccess value)? login,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }
}

abstract class Testing implements UserState {
  const factory Testing({required final Test test}) = _$Testing;

  Test get test;
  @JsonKey(ignore: true)
  _$$TestingCopyWith<_$Testing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessCopyWith<$Res> {
  factory _$$LoginSuccessCopyWith(
          _$LoginSuccess value, $Res Function(_$LoginSuccess) then) =
      __$$LoginSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCode authToken});

  $AuthCodeCopyWith<$Res> get authToken;
}

/// @nodoc
class __$$LoginSuccessCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$LoginSuccess>
    implements _$$LoginSuccessCopyWith<$Res> {
  __$$LoginSuccessCopyWithImpl(
      _$LoginSuccess _value, $Res Function(_$LoginSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
  }) {
    return _then(_$LoginSuccess(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as AuthCode,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCodeCopyWith<$Res> get authToken {
    return $AuthCodeCopyWith<$Res>(_value.authToken, (value) {
      return _then(_value.copyWith(authToken: value));
    });
  }
}

/// @nodoc

class _$LoginSuccess implements LoginSuccess {
  const _$LoginSuccess({required this.authToken});

  @override
  final AuthCode authToken;

  @override
  String toString() {
    return 'UserState.login(authToken: $authToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccess &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      __$$LoginSuccessCopyWithImpl<_$LoginSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Test test) test,
    required TResult Function(AuthCode authToken) login,
  }) {
    return login(authToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Test test)? test,
    TResult? Function(AuthCode authToken)? login,
  }) {
    return login?.call(authToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Test test)? test,
    TResult Function(AuthCode authToken)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(authToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(loading value) loading,
    required TResult Function(Testing value) test,
    required TResult Function(LoginSuccess value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(loading value)? loading,
    TResult? Function(Testing value)? test,
    TResult? Function(LoginSuccess value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(loading value)? loading,
    TResult Function(Testing value)? test,
    TResult Function(LoginSuccess value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements UserState {
  const factory LoginSuccess({required final AuthCode authToken}) =
      _$LoginSuccess;

  AuthCode get authToken;
  @JsonKey(ignore: true)
  _$$LoginSuccessCopyWith<_$LoginSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
