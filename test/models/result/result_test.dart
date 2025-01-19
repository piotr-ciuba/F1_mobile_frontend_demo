import 'package:f1_mobile_frontend_demo/models/result/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Result', () {
    test('fromJson should correctly deserialize JSON into Result', () {
      final Map<String, dynamic> json = {
        'number': '2',
        'position': '1',
        'positionText': '1',
        'points': '9',
        'Driver': {
          'driverId': 'farina',
          'url': 'http://en.wikipedia.org/wiki/Nino_Farina',
          'givenName': 'Nino',
          'familyName': 'Farina',
          'dateOfBirth': '1906-10-30',
          'nationality': 'Italian'
        },
        'Constructor': {
          'constructorId': 'alfa',
          'url': 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One',
          'name': 'Alfa Romeo',
          'nationality': 'Swiss'
        },
        'grid': '1',
        'laps': '70',
        'status': 'Finished',
        'Time': {'millis': '8003600', 'time': '2:13:23.600'}
      };

      final result = Result.fromJson(json);

      expect(result.number, '2');
      expect(result.position, '1');
      expect(result.positionText, '1');
      expect(result.points, '9');
      expect(result.driver?.driverId, 'farina');
      expect(result.driver?.givenName, 'Nino');
      expect(result.driver?.familyName, 'Farina');
      expect(result.driver?.dateOfBirth, '1906-10-30');
      expect(result.driver?.nationality, 'Italian');
      expect(result.constructor?.constructorId, 'alfa');
      expect(result.constructor?.name, 'Alfa Romeo');
      expect(result.constructor?.nationality, 'Swiss');
      expect(result.grid, '1');
      expect(result.laps, '70');
      expect(result.status, 'Finished');
      expect(result.time?.millis, '8003600');
      expect(result.time?.time, '2:13:23.600');
    });

    test('toJson should correctly serialize Result to JSON', () {
      final result = Result.testModel;
      const expectedJson = {
        'number': '2',
        'position': '1',
        'positionText': '1',
        'points': '9',
        'Driver': {
          'driverId': 'farina',
          'url': 'http://en.wikipedia.org/wiki/Nino_Farina',
          'givenName': 'Nino',
          'familyName': 'Farina',
          'dateOfBirth': '1906-10-30',
          'nationality': 'Italian'
        },
        'Constructor': {
          'constructorId': 'alfa',
          'url': 'http://en.wikipedia.org/wiki/Alfa_Romeo_in_Formula_One',
          'name': 'Alfa Romeo',
          'nationality': 'Swiss'
        },
        'grid': '1',
        'laps': '70',
        'status': 'Finished',
        'Time': {'millis': '8003600', 'time': '2:13:23.600'}
      };

      final jsonMap = result.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final result = Result.testModel;

      expect(result.number, '2');
      expect(result.position, '1');
      expect(result.positionText, '1');
      expect(result.points, '9');
      expect(result.driver?.driverId, 'farina');
      expect(result.driver?.givenName, 'Nino');
      expect(result.driver?.familyName, 'Farina');
      expect(result.driver?.dateOfBirth, '1906-10-30');
      expect(result.driver?.nationality, 'Italian');
      expect(result.constructor?.constructorId, 'alfa');
      expect(result.constructor?.name, 'Alfa Romeo');
      expect(result.constructor?.nationality, 'Swiss');
      expect(result.grid, '1');
      expect(result.laps, '70');
      expect(result.status, 'Finished');
      expect(result.time?.millis, '8003600');
      expect(result.time?.time, '2:13:23.600');
    });
  });
}
