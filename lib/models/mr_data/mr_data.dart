import 'package:f1_mobile_frontend_demo/models/circuit_table/circuit_table.dart';
import 'package:f1_mobile_frontend_demo/models/constructor_table/constructor_table.dart';
import 'package:f1_mobile_frontend_demo/models/driver_table/driver_table.dart';
import 'package:f1_mobile_frontend_demo/models/race_table/race_table.dart';
import 'package:f1_mobile_frontend_demo/models/season_table/season_table.dart';
import 'package:f1_mobile_frontend_demo/models/status_table/status_table.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mr_data.freezed.dart';
part 'mr_data.g.dart';

@freezed
class MrData with _$MrData {
  factory MrData({
    String? xmlns,
    String? series,
    String? url,
    String? limit,
    String? offset,
    String? total,
    @JsonKey(name: 'RaceTable') RaceTable? raceTable,
    @JsonKey(name: 'DriverTable') DriverTable? driverTable,
    @JsonKey(name: 'CircuitTable') CircuitTable? circuitTable,
    @JsonKey(name: 'ConstructorTable') ConstructorTable? constructorTable,
    @JsonKey(name: 'SeasonTable') SeasonTable? seasonTable,
    @JsonKey(name: 'StatusTable') StatusTable? statusTable,
  }) = _MrData;

  factory MrData.fromJson(Map<String, dynamic> json) => _$MrDataFromJson(json);
}
