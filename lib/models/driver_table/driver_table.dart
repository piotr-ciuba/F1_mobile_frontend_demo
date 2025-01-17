import 'package:f1_mobile_frontend_demo/models/driver/driver.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_table.freezed.dart';
part 'driver_table.g.dart';

@freezed
class DriverTable with _$DriverTable {
  factory DriverTable({
    @JsonKey(name: 'Drivers') List<Driver>? drivers,
  }) = _DriverTable;

  factory DriverTable.fromJson(Map<String, dynamic> json) =>
      _$DriverTableFromJson(json);
}
