import 'package:f1_mobile_frontend_demo/models/time/time.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  group('Time Model Tests', () {
    test('Test model matches expected values', () {
      final testModel = Time.testModel;
      expect(testModel.millis, '8006200');
      expect(testModel.time, '+2.600');
    });

    test('Test model JSON matches expected structure', () {
      final jsonString = Time.testModelJson;
      final parsedJson = jsonDecode(jsonString);

      expect(parsedJson['millis'], '8006200');
      expect(parsedJson['time'], '+2.600');
    });

    test('Deserialize from JSON correctly', () {
      final jsonString = Time.testModelJson;
      final parsedJson = jsonDecode(jsonString);
      final time = Time.fromJson(parsedJson);

      expect(time.millis, '8006200');
      expect(time.time, '+2.600');
    });

    test('Serialize to JSON correctly', () {
      final time = Time.testModel;
      final json = time.toJson();

      expect(json['millis'], '8006200');
      expect(json['time'], '+2.600');
    });

    test('Equality and hashCode work correctly', () {
      const time1 = Time(millis: '8006200', time: '+2.600');
      const time2 = Time(millis: '8006200', time: '+2.600');
      const time3 = Time(millis: '12345', time: '00:00');

      expect(time1, equals(time2));
      expect(time1.hashCode, equals(time2.hashCode));
      expect(time1, isNot(equals(time3)));
      expect(time1.hashCode, isNot(equals(time3.hashCode)));
    });

    test('CopyWith method works correctly', () {
      const time = Time(millis: '8006200', time: '+2.600');
      final updatedTime = time.copyWith(millis: '12345');

      expect(updatedTime.millis, '12345');
      expect(updatedTime.time, '+2.600');
    });
  });
}
