import 'package:f1_mobile_frontend_demo/models/constructor/constructor.dart';
import 'package:f1_mobile_frontend_demo/models/driver/driver.dart';
import 'package:f1_mobile_frontend_demo/models/time/time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  const factory Result({
    String? number,
    String? position,
    String? positionText,
    String? points,
    @JsonKey(name: 'Driver') Driver? driver,
    @JsonKey(name: 'Constructor') Constructor? constructor,
    String? grid,
    String? laps,
    String? status,
    @JsonKey(name: 'Time') Time? time,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
