import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/core/utils/api_client.dart';
import 'package:injectable/injectable.dart';

@singleton
class F1Service {
  F1Service(
    this._apiClient,
  );

  final ApiClient _apiClient;
  static final options = Options(
    followRedirects: false,
    validateStatus: (status) => (status ?? 0) < 500,
  );

  Future<Response<dynamic>> getF1Races({
    int? pageLimit,
  }) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Races,
      queryParameters: pageLimit != null
          ? {
              'limit': pageLimit,
            }
          : null,
    );
  }

  Future<Response<dynamic>> getF1Seasons() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Seasons,
    );
  }

  Future<Response<dynamic>> getF1Drivers() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Drivers,
    );
  }

  Future<Response<dynamic>> getF1Constructors() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Constructors,
    );
  }

  Future<Response<dynamic>> getF1Circuits() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Circuits,
    );
  }

  Future<Response<dynamic>> getF1Results() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Results,
    );
  }

  Future<Response<dynamic>> getF1Sprint() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Sprint,
    );
  }

  Future<Response<dynamic>> getF1Status() async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Status,
    );
  }
}
