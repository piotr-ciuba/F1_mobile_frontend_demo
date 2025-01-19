import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/extensions/logic/dio_extensions.dart';
import 'package:f1_mobile_frontend_demo/models/mr_data/mr_data.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:injectable/injectable.dart';

@singleton
class F1Repository {
  F1Repository(
    this.f1service,
  );

  final F1Service f1service;

  static const int _maxRacePerPageLimit = 30;

  Future<List<Race>?> getF1Races({
    int? pageLimit,
  }) async {
    if (pageLimit != null && pageLimit > _maxRacePerPageLimit) {
      pageLimit = _maxRacePerPageLimit;
    }

    final Response<dynamic> response = await f1service.getF1Resource(
      resource: F1Resource.races,
      pageLimit: pageLimit,
    );

    if (response.isSuccess && response.data != null) {
      final MrData mrData = MrData.fromJson(response.data['MRData']);
      final List<Race>? responseRaces = mrData.raceTable?.races;

      if (responseRaces == null) {
        return null;
      }

      return responseRaces;
    } else {
      return null;
    }
  }
}
