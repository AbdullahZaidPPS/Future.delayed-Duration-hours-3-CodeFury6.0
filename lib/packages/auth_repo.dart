import 'package:dio/dio.dart';
import 'package:duck/models/auth_models.dart';
import 'package:retrofit/http.dart' as retrofit;

part 'auth_repo.g.dart';

@retrofit.RestApi(baseUrl: "http://10.0.2.2:3000")
abstract class AuthRepo {
  factory AuthRepo(Dio dio, {String? baseUrl}) = _AuthRepo;

  @retrofit.GET("/testing")
  Future<Test> test();

  @retrofit.GET("/login")
  Future<AuthCode> GetUserLogin({@retrofit.Body() required UserLogin login});
}
