import 'package:f1_mobile_frontend_demo/models/status/status.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Status', () {
    test('fromJson should correctly deserialize JSON into Status', () {
      final Map<String, dynamic> json = {
        'statusId': '1',
        'count': '7674',
        'status': 'Finished'
      };

      final status = Status.fromJson(json);

      expect(status.statusId, '1');
      expect(status.count, '7674');
      expect(status.status, 'Finished');
    });

    test('toJson should correctly serialize Status to JSON', () {
      final status = Status.testModel;
      const expectedJson = {
        'statusId': '1',
        'count': '7674',
        'status': 'Finished'
      };

      final jsonMap = status.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final status = Status.testModel;

      expect(status.statusId, '1');
      expect(status.count, '7674');
      expect(status.status, 'Finished');
    });
  });
}
