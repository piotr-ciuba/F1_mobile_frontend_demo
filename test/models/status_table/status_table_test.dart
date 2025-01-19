import 'package:f1_mobile_frontend_demo/models/status_table/status_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StatusTable', () {
    test('fromJson should correctly deserialize JSON into StatusTable', () {
      final Map<String, dynamic> json = {
        'Status': [
          {'statusId': '1', 'count': '7674', 'status': 'Finished'},
          {'statusId': '2', 'count': '147', 'status': 'Disqualified'}
        ]
      };

      final statusTable = StatusTable.fromJson(json);

      expect(statusTable.status?.length, 2);
      expect(statusTable.status?.first.statusId, '1');
      expect(statusTable.status?.first.count, '7674');
      expect(statusTable.status?.first.status, 'Finished');
      expect(statusTable.status?.last.statusId, '2');
      expect(statusTable.status?.last.count, '147');
      expect(statusTable.status?.last.status, 'Disqualified');
    });

    test('toJson should correctly serialize StatusTable to JSON', () {
      final statusTable = StatusTable.testModel;
      const expectedJson = {
        'Status': [
          {'statusId': '1', 'count': '7674', 'status': 'Finished'},
          {'statusId': '2', 'count': '147', 'status': 'Disqualified'}
        ]
      };

      final jsonMap = statusTable.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final statusTable = StatusTable.testModel;

      final firstStatus = statusTable.status?.first;
      final secondStatus = statusTable.status?.last;

      expect(firstStatus?.statusId, '1');
      expect(firstStatus?.count, '7674');
      expect(firstStatus?.status, 'Finished');
      expect(secondStatus?.statusId, '2');
      expect(secondStatus?.count, '147');
      expect(secondStatus?.status, 'Disqualified');
    });
  });
}
