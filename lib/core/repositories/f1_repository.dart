import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/dio_extensions.dart';
import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:f1_mobile_frontend_demo/models/constructor/constructor.dart';
import 'package:f1_mobile_frontend_demo/models/driver/driver.dart';
import 'package:f1_mobile_frontend_demo/models/mr_data/mr_data.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:f1_mobile_frontend_demo/models/result/result.dart';
import 'package:f1_mobile_frontend_demo/models/season/season.dart';
import 'package:f1_mobile_frontend_demo/models/status/status.dart';
import 'package:injectable/injectable.dart';

@injectable
class F1Repository {
  F1Repository(
    this.f1service,
  );

  final F1Service f1service;

  static const int _apiRacePerPageLimit = 30;
  static const int _apiStatusPerPageLimit = 30;
  static const int _apiDriverPerPageLimit = 30;
  static const int _apiSeasonPerPageLimit = 30;
  static const int _apiResultPerPageLimit = 30;
  static const int _apiCircuitPerPageLimit = 30;
  static const int _apiConstructorPerPageLimit = 30;

  Future<List<Race>?> getF1Races({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.races) as List<Race>?;
  }

  Future<List<Status>?> getF1Status({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.status) as List<Status>?;
  }

  Future<List<Season>?> getF1Seasons({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.seasons) as List<Season>?;
  }

  Future<List<Driver>?> getF1Drivers({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.drivers) as List<Driver>?;
  }

  Future<List<Result>?> getF1Results({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.results) as List<Result>?;
  }

  Future<List<Circuit>?> getF1Circuits({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.circuits)
        as List<Circuit>?;
  }

  Future<List<Constructor>?> getF1Constructors({
    int? pageLimit,
  }) async {
    return await _getF1Resource(pageLimit, F1Resource.constructors)
        as List<Constructor>?;
  }

  Future<List<Object>?> _getF1Resource(
    int? pageLimit,
    F1Resource resource,
  ) async {
    Response<dynamic> response =
        await _getResourceResponse(resource, pageLimit);

    if (response.isSuccess && response.data != null) {
      final MrData mrData = MrData.fromJson(response.data['MRData']);
      return _getResourceData(resource, mrData);
    } else {
      return null;
    }
  }

  Future<Response<dynamic>> _getResourceResponse(
    F1Resource resource,
    int? pageLimit,
  ) async {
    switch (resource) {
      case F1Resource.races:
        if (pageLimit != null && pageLimit > _apiRacePerPageLimit) {
          pageLimit = _apiRacePerPageLimit;
        }
        break;
      case F1Resource.seasons:
        if (pageLimit != null && pageLimit > _apiSeasonPerPageLimit) {
          pageLimit = _apiSeasonPerPageLimit;
        }
        break;
      case F1Resource.drivers:
        if (pageLimit != null && pageLimit > _apiDriverPerPageLimit) {
          pageLimit = _apiDriverPerPageLimit;
        }
        break;
      case F1Resource.constructors:
        if (pageLimit != null && pageLimit > _apiConstructorPerPageLimit) {
          pageLimit = _apiConstructorPerPageLimit;
        }
        break;
      case F1Resource.circuits:
        if (pageLimit != null && pageLimit > _apiCircuitPerPageLimit) {
          pageLimit = _apiCircuitPerPageLimit;
        }
        break;
      case F1Resource.results:
        if (pageLimit != null && pageLimit > _apiResultPerPageLimit) {
          pageLimit = _apiResultPerPageLimit;
        }
        break;
      case F1Resource.status:
        if (pageLimit != null && pageLimit > _apiStatusPerPageLimit) {
          pageLimit = _apiStatusPerPageLimit;
        }
        break;
    }

    final Response<dynamic> response = await f1service.getF1Resource(
      resource: F1Resource.races,
      pageLimit: pageLimit,
    );

    return response;
  }

  List<Object>? _getResourceData(
    F1Resource resource,
    MrData mrData,
  ) {
    switch (resource) {
      case F1Resource.races:
        return mrData.raceTable?.races;
      case F1Resource.seasons:
        return mrData.seasonTable?.seasons;
      case F1Resource.drivers:
        return mrData.driverTable?.drivers;
      case F1Resource.constructors:
        return mrData.constructorTable?.constructors;
      case F1Resource.circuits:
        return mrData.circuitTable?.circuits;
      case F1Resource.results:
        return mrData.raceTable?.races;
      case F1Resource.status:
        return mrData.statusTable?.status;
    }
  }
}
