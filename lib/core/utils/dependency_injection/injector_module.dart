import 'package:f1_mobile_frontend_demo/common/endpoints.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio provideDio() => Dio();

  @singleton
  Endpoints provideEndpoints() => Endpoints();

  @preResolve
  Future<SharedPreferences> provideSharedPrefs() =>
      SharedPreferences.getInstance();
}
