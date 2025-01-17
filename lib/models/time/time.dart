import 'package:freezed_annotation/freezed_annotation.dart';

part 'time.freezed.dart';
part 'time.g.dart';

@freezed
class Time with _$Time {
  const factory Time({
    String? millis,
    String? time,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

  static Time get testModel => const Time(
        millis: '8006200',
        time: '+2.600',
      );

  static String get testModelJson => '''
  {
    "millis": "8006200",
    "time": "+2.600"
  }
  ''';
}
