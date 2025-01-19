import 'dart:convert';

import 'package:f1_mobile_frontend_demo/models/constructor/constructor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Constructor', () {
    test('testModelJson should match serialized testModel', () {
      final testModel = Constructor.testModel;
      final jsonString = Constructor.testModelJson;
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

      expect(testModel.toJson(), jsonData);
    });

    test('Serialization of Constructor', () {
      const constructor = Constructor(
        constructorId: 'adams',
        url: 'http://en.wikipedia.org/wiki/Adams_(constructor)',
        name: 'Adams',
        nationality: 'American',
      );

      final json = constructor.toJson();
      expect(json['constructorId'], 'adams');
      expect(json['url'], 'http://en.wikipedia.org/wiki/Adams_(constructor)');
      expect(json['name'], 'Adams');
      expect(json['nationality'], 'American');
    });

    test('Deserialization of Constructor', () {
      final jsonString = Constructor.testModelJson;
      final jsonData = jsonDecode(jsonString) as Map<String, dynamic>;

      final constructor = Constructor.fromJson(jsonData);

      expect(constructor.constructorId, 'adams');
      expect(
          constructor.url, 'http://en.wikipedia.org/wiki/Adams_(constructor)');
      expect(constructor.name, 'Adams');
      expect(constructor.nationality, 'American');
    });

    test('Round-trip serialization and deserialization', () {
      const constructor = Constructor(
        constructorId: 'adams',
        url: 'http://en.wikipedia.org/wiki/Adams_(constructor)',
        name: 'Adams',
        nationality: 'American',
      );

      final json = constructor.toJson();
      final deserialized = Constructor.fromJson(json);

      expect(deserialized, constructor);
    });
  });
}
