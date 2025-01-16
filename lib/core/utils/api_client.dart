import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/common/endpoints.dart';

class ApiClient {
  const ApiClient({
    required this.dio,
    required this.endpoints,
  });

  final Dio dio;
  final Endpoints endpoints;
}
