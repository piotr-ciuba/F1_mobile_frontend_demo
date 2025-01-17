import 'package:f1_mobile_frontend_demo/common/endpoints.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio provideDio() => Dio();

  @singleton
  Endpoints provideEndpoints() => Endpoints();
}
