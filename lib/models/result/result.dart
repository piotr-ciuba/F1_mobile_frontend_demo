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

  static Result get testModel => Result(
        number: '2',
        position: '1',
        positionText: '1',
        points: '9',
        driver: Driver(
          driverId: 'farina',
          url: 'http://en.wikipedia.org/wiki/Nino_Farina',
          givenName: 'Nino',
          familyName: 'Farina',
          dateOfBirth: '1906-10-30',
          nationality: 'Italian',
        ),
        constructor: Constructor(
          constructorId: 'alfa',
          url: 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One',
          name: 'Alfa Romeo',
          nationality: 'Swiss',
        ),
        grid: '1',
        laps: '70',
        status: 'Finished',
        time: Time(
          millis: '8003600',
          time: '2:13:23.600',
        ),
      );

  static String get testModelJson => '''
  {
    "number": "2",
    "position": "1",
    "positionText": "1",
    "points": "9",
    "Driver": {
        "driverId": "farina",
        "url": "http://en.wikipedia.org/wiki/Nino_Farina",
        "givenName": "Nino",
        "familyName": "Farina",
        "dateOfBirth": "1906-10-30",
        "nationality": "Italian"
    },
    "Constructor": {
        "constructorId": "alfa",
        "url": "http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One",
        "name": "Alfa Romeo",
        "nationality": "Swiss"
    },
    "grid": "1",
    "laps": "70",
    "status": "Finished",
    "Time": {
        "millis": "8003600",
        "time": "2:13:23.600"
    }
  }
  ''';
}
