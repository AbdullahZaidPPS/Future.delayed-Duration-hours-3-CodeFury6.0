import 'dart:developer';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:duck/bloc/auth_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:duck/models/auth_models.dart';
import 'package:duck/packages/auth_repo.dart';
import 'package:duck/shared_prefs/shared_prefs_cache.dart';

class UserTestService {
  Future<Test> test(TestingUserEvent event, Emitter<UserState> emit) async {
    final dio = Dio(BaseOptions(
        contentType: "application/json", baseUrl: "http://10.0.2.2:3000"));
    log("not able to");
    final response = await AuthRepo(dio).test();

    emit(UserState.test(test: response));
    return response;
  }

  Future<AuthCode> loginUser(LoginUser event, Emitter<UserState> emit) async {
    try {
      final dio = Dio(BaseOptions(
          contentType: "application/json", baseUrl: "http://10.0.2.2:3000"));
      log('test');
      final response = await AuthRepo(dio).GetUserLogin(login: event.loginDets);
      await MySharedPreferences().saveDataWithExpiration(
          response.authToken.toString(), Duration(hours: 3));
      emit(UserState.login(authToken: response));
      return response;
    } catch (e) {
      log(e.toString());
      return AuthCode(authToken: "");
    }
  }
}
