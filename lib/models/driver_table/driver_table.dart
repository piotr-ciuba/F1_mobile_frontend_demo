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

  static DriverTable get testModel => DriverTable(
        drivers: [
          Driver(
            driverId: 'abate',
            url: 'http://en.wikipedia.org/wiki/Carlo_Mario_Abate',
            givenName: 'Carlo',
            familyName: 'Abate',
            dateOfBirth: '1932-07-10',
            nationality: 'Italian',
          ),
          Driver(
            driverId: 'abecassis',
            url: 'http://en.wikipedia.org/wiki/George_Abecassis',
            givenName: 'George',
            familyName: 'Abecassis',
            dateOfBirth: '1913-03-21',
            nationality: 'British',
          ),
        ],
      );

  static String get testModelJson => '''
  {
    "Drivers": [
        {
            "driverId": "abate",
            "url": "http://en.wikipedia.org/wiki/Carlo_Mario_Abate",
            "givenName": "Carlo",
            "familyName": "Abate",
            "dateOfBirth": "1932-07-10",
            "nationality": "Italian"
        },
        {
            "driverId": "abecassis",
            "url": "http://en.wikipedia.org/wiki/George_Abecassis",
            "givenName": "George",
            "familyName": "Abecassis",
            "dateOfBirth": "1913-03-21",
            "nationality": "British"
        }
    ]
  }
  ''';
}
