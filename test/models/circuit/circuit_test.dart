import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:f1_mobile_frontend_demo/models/location/location.dart';
import 'dart:convert';

void main() {
  group('Circuit model tests', () {
    test('Test model should match expected values', () {
      const expectedCircuitId = 'adelaide';
      const expectedUrl =
          'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit';
      const expectedCircuitName = 'Adelaide Street Circuit';
      const expectedLocation = Location(
        lat: '-34.9272',
        long: '138.617',
        locality: 'Adelaide',
        country: 'Australia',
      );

      final testModel = Circuit.testModel;

      expect(testModel.circuitId, expectedCircuitId);
      expect(testModel.url, expectedUrl);
      expect(testModel.circuitName, expectedCircuitName);
      expect(testModel.location, expectedLocation);
    });

    test('Test model JSON should deserialize correctly', () {
      final testModelJson = Circuit.testModelJson;

      final decodedJson = json.decode(testModelJson) as Map<String, dynamic>;
      final circuit = Circuit.fromJson(decodedJson);

      expect(circuit.circuitId, 'adelaide');
      expect(
          circuit.url, 'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit');
      expect(circuit.circuitName, 'Adelaide Street Circuit');
      expect(circuit.location?.lat, '-34.9272');
      expect(circuit.location?.long, '138.617');
      expect(circuit.location?.locality, 'Adelaide');
      expect(circuit.location?.country, 'Australia');
    });

    test('Model should serialize to JSON correctly', () {
      final testModel = Circuit.testModel;
      final expectedJson = {
        'circuitId': 'adelaide',
        'url': 'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit',
        'circuitName': 'Adelaide Street Circuit',
        'Location': {
          'lat': '-34.9272',
          'long': '138.617',
          'locality': 'Adelaide',
          'country': 'Australia',
        },
      };

      final jsonMap = testModel.toJson();

      expect(jsonMap, equals(expectedJson));
    });

    test('Equality and hashcode should work correctly', () {
      final circuit1 = Circuit.testModel;
      final circuit2 = Circuit.testModel;

      expect(circuit1, equals(circuit2));
      expect(circuit1.hashCode, equals(circuit2.hashCode));
    });
  });
}
