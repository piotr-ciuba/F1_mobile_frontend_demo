import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/core/utils/api_client.dart';
import 'package:injectable/injectable.dart';

enum F1Resource {
  races,
  seasons,
  drivers,
  constructors,
  circuits,
  results,
  status
}

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

  Future<Response<dynamic>> getF1Resource({
    required F1Resource resource,
    int? pageLimit,
  }) async {
    Map<String, dynamic>? queryParameters;
    if (pageLimit != null) {
      queryParameters = {
        'limit': pageLimit,
      };
    }

    switch (resource) {
      case F1Resource.races:
        return _getF1Races(queryParameters);
      case F1Resource.seasons:
        return _getF1Seasons(queryParameters);
      case F1Resource.drivers:
        return _getF1Drivers(queryParameters);
      case F1Resource.constructors:
        return _getF1Constructors(queryParameters);
      case F1Resource.circuits:
        return _getF1Circuits(queryParameters);
      case F1Resource.results:
        return _getF1Results(queryParameters);
      case F1Resource.status:
        return _getF1Status(queryParameters);
    }
  }

  Future<Response<dynamic>> _getF1Races(Map<String, dynamic>? params) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Races,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Seasons(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Seasons,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Drivers(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Drivers,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Constructors(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Constructors,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Circuits(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Circuits,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Results(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Results,
      queryParameters: params,
    );
  }

  Future<Response<dynamic>> _getF1Status(
    Map<String, dynamic>? params,
  ) async {
    return _apiClient.dio.get(
      _apiClient.endpoints.f1Status,
      queryParameters: params,
    );
  }
}
