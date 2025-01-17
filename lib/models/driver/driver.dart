import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  const factory Driver({
    String? driverId,
    String? url,
    String? givenName,
    String? familyName,
    String? dateOfBirth,
    String? nationality,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);

  static Driver get testModel => const Driver(
        driverId: 'verstappen',
        url: 'http://en.wikipedia.org/wiki/Jos_Verstappen',
        givenName: 'Jos',
        familyName: 'Verstappen',
        dateOfBirth: '1972-03-04',
        nationality: 'Dutch',
      );

  static String get testModelJson => '''
  {
    "driverId": "verstappen",
    "url": "http://en.wikipedia.org/wiki/Jos_Verstappen",
    "givenName": "Jos",
    "familyName": "Verstappen",
    "dateOfBirth": "1972-03-04",
    "nationality": "Dutch"
  }
  ''';
}
