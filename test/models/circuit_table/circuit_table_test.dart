import 'dart:convert';

import 'package:f1_mobile_frontend_demo/models/circuit_table/circuit_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CircuitTable Tests', () {
    test('should create a CircuitTable instance with the correct data', () {
      final circuitTable = CircuitTable.testModel;

      expect(circuitTable.circuits, isNotNull);
      expect(circuitTable.circuits!.length, 2);

      final adelaideCircuit = circuitTable.circuits![0];
      expect(adelaideCircuit.circuitId, 'adelaide');
      expect(adelaideCircuit.circuitName, 'Adelaide Street Circuit');
      expect(adelaideCircuit.url,
          'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit');
      expect(adelaideCircuit.location?.lat, '-34.9272');
      expect(adelaideCircuit.location?.long, '138.617');
      expect(adelaideCircuit.location?.locality, 'Adelaide');
      expect(adelaideCircuit.location?.country, 'Australia');

      final ainDiabCircuit = circuitTable.circuits![1];
      expect(ainDiabCircuit.circuitId, 'ain-diab');
      expect(ainDiabCircuit.circuitName, 'Ain Diab');
      expect(
          ainDiabCircuit.url, 'https://en.wikipedia.org/wiki/Ain-Diab_Circuit');
      expect(ainDiabCircuit.location?.lat, '33.5786');
      expect(ainDiabCircuit.location?.long, '-7.6875');
      expect(ainDiabCircuit.location?.locality, 'Casablanca');
      expect(ainDiabCircuit.location?.country, 'Morocco');
    });

    test('should serialize CircuitTable to JSON correctly', () {
      final circuitTable = CircuitTable.testModel;
      const expectedJson = {
        'Circuits': [
          {
            'circuitId': 'adelaide',
            'url': 'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit',
            'circuitName': 'Adelaide Street Circuit',
            'Location': {
              'lat': '-34.9272',
              'long': '138.617',
              'locality': 'Adelaide',
              'country': 'Australia',
            }
          },
          {
            'circuitId': 'ain-diab',
            'url': 'https://en.wikipedia.org/wiki/Ain-Diab_Circuit',
            'circuitName': 'Ain Diab',
            'Location': {
              'lat': '33.5786',
              'long': '-7.6875',
              'locality': 'Casablanca',
              'country': 'Morocco',
            }
          },
        ],
      };

      final jsonMap = circuitTable.toJson();

      expect(jsonMap, expectedJson);
    });

    test('should deserialize CircuitTable from JSON correctly', () {
      final jsonMap =
          jsonDecode(CircuitTable.testModelJson) as Map<String, dynamic>;

      final circuitTable = CircuitTable.fromJson(jsonMap);

      expect(circuitTable, CircuitTable.testModel);
    });
  });
}
