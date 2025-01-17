import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/common/endpoints.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiClient {
  const ApiClient({
    required this.dio,
    required this.endpoints,
  });

  final Dio dio;
  final Endpoints endpoints;
}
