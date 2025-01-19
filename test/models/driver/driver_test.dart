import 'dart:convert';

import 'package:f1_mobile_frontend_demo/models/driver/driver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Driver', () {
    test('testModel should have correct values', () {
      final testModel = Driver.testModel;

      expect(testModel.driverId, 'verstappen');
      expect(testModel.url, 'http://en.wikipedia.org/wiki/Jos_Verstappen');
      expect(testModel.givenName, 'Jos');
      expect(testModel.familyName, 'Verstappen');
      expect(testModel.dateOfBirth, '1972-03-04');
      expect(testModel.nationality, 'Dutch');
    });

    test('testModelJson should match serialized testModel', () {
      final testModel = Driver.testModel;
      final jsonString = Driver.testModelJson;
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(testModel.toJson(), jsonData);
    });

    test('Serialization of Driver', () {
      const driver = Driver(
        driverId: 'verstappen',
        url: 'http://en.wikipedia.org/wiki/Jos_Verstappen',
        givenName: 'Jos',
        familyName: 'Verstappen',
        dateOfBirth: '1972-03-04',
        nationality: 'Dutch',
      );

      final json = driver.toJson();
      expect(json['driverId'], 'verstappen');
      expect(json['url'], 'http://en.wikipedia.org/wiki/Jos_Verstappen');
      expect(json['givenName'], 'Jos');
      expect(json['familyName'], 'Verstappen');
      expect(json['dateOfBirth'], '1972-03-04');
      expect(json['nationality'], 'Dutch');
    });

    test('Deserialization of Driver', () {
      final jsonString = Driver.testModelJson;
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

      final driver = Driver.fromJson(jsonData);

      expect(driver.driverId, 'verstappen');
      expect(driver.url, 'http://en.wikipedia.org/wiki/Jos_Verstappen');
      expect(driver.givenName, 'Jos');
      expect(driver.familyName, 'Verstappen');
      expect(driver.dateOfBirth, '1972-03-04');
      expect(driver.nationality, 'Dutch');
    });

    test('Round-trip serialization and deserialization', () {
      const driver = Driver(
        driverId: 'verstappen',
        url: 'http://en.wikipedia.org/wiki/Jos_Verstappen',
        givenName: 'Jos',
        familyName: 'Verstappen',
        dateOfBirth: '1972-03-04',
        nationality: 'Dutch',
      );

      final json = driver.toJson();
      final deserialized = Driver.fromJson(json);

      expect(deserialized, driver);
    });
  });
}
