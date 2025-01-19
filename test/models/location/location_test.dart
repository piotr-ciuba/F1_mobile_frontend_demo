import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:f1_mobile_frontend_demo/models/location/location.dart';

void main() {
  group('Location model tests', () {
    test('Test model should match expected values', () {
      const expectedLat = '43.7347';
      const expectedLong = '7.42056';
      const expectedLocality = 'Monte-Carlo';
      const expectedCountry = 'Monaco';

      final testModel = Location.testModel;

      expect(testModel.lat, expectedLat);
      expect(testModel.long, expectedLong);
      expect(testModel.locality, expectedLocality);
      expect(testModel.country, expectedCountry);
    });

    test('Test model JSON should deserialize correctly', () {
      final testModelJson = Location.testModelJson;

      final decodedJson = json.decode(testModelJson) as Map<String, dynamic>;
      final location = Location.fromJson(decodedJson);

      expect(location.lat, '43.7347');
      expect(location.long, '7.42056');
      expect(location.locality, 'Monte-Carlo');
      expect(location.country, 'Monaco');
    });

    test('Model should serialize to JSON correctly', () {
      final testModel = Location.testModel;
      const expectedJson = {
        'lat': '43.7347',
        'long': '7.42056',
        'locality': 'Monte-Carlo',
        'country': 'Monaco',
      };

      final jsonMap = testModel.toJson();

      expect(jsonMap, expectedJson);
    });

    test('Equality and hashcode should work correctly', () {
      final location1 = Location.testModel;
      final location2 = Location.testModel;

      expect(location1, equals(location2));
      expect(location1.hashCode, equals(location2.hashCode));
    });
  });
}
