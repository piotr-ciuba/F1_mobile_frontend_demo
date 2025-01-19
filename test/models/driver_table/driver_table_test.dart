import 'package:f1_mobile_frontend_demo/models/driver_table/driver_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DriverTable', () {
    test('fromJson should correctly deserialize JSON into DriverTable', () {
      final Map<String, dynamic> json = {
        'Drivers': [
          {
            'driverId': 'abate',
            'url': 'http://en.wikipedia.org/wiki/Carlo_Mario_Abate',
            'givenName': 'Carlo',
            'familyName': 'Abate',
            'dateOfBirth': '1932-07-10',
            'nationality': 'Italian'
          },
          {
            'driverId': 'abecassis',
            'url': 'http://en.wikipedia.org/wiki/George_Abecassis',
            'givenName': 'George',
            'familyName': 'Abecassis',
            'dateOfBirth': '1913-03-21',
            'nationality': 'British'
          }
        ]
      };

      final driverTable = DriverTable.fromJson(json);

      expect(driverTable.drivers?.length, 2);
      expect(driverTable.drivers?.first.driverId, 'abate');
      expect(driverTable.drivers?.last.driverId, 'abecassis');
    });

    test('toJson should correctly serialize DriverTable to JSON', () {
      final driverTable = DriverTable.testModel;
      const expectedJson = {
        'Drivers': [
          {
            'driverId': 'abate',
            'url': 'http://en.wikipedia.org/wiki/Carlo_Mario_Abate',
            'givenName': 'Carlo',
            'familyName': 'Abate',
            'dateOfBirth': '1932-07-10',
            'nationality': 'Italian'
          },
          {
            'driverId': 'abecassis',
            'url': 'http://en.wikipedia.org/wiki/George_Abecassis',
            'givenName': 'George',
            'familyName': 'Abecassis',
            'dateOfBirth': '1913-03-21',
            'nationality': 'British'
          }
        ]
      };

      final jsonMap = driverTable.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final driverTable = DriverTable.testModel;

      final firstDriver = driverTable.drivers?.first;
      final secondDriver = driverTable.drivers?.last;

      expect(firstDriver?.driverId, 'abate');
      expect(firstDriver?.givenName, 'Carlo');
      expect(firstDriver?.familyName, 'Abate');
      expect(firstDriver?.dateOfBirth, '1932-07-10');
      expect(firstDriver?.nationality, 'Italian');

      expect(secondDriver?.driverId, 'abecassis');
      expect(secondDriver?.givenName, 'George');
      expect(secondDriver?.familyName, 'Abecassis');
      expect(secondDriver?.dateOfBirth, '1913-03-21');
      expect(secondDriver?.nationality, 'British');
    });
  });
}
