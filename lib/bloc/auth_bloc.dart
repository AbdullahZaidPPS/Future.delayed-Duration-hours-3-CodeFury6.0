import 'package:bloc/bloc.dart';
import 'package:duck/models/auth_models.dart';
import 'package:duck/services/auth_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class AuthBloc extends Bloc<UserEvent, UserState> {
  AuthBloc() : super(const UserState.loading()) {
    on<TestingUserEvent>((event, emit) => UserTestService().test(event, emit));
    on<LoginUser>(
      (event, emit) => UserTestService().loginUser(event, emit),
    );
  }
}
