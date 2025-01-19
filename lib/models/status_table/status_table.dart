import 'package:f1_mobile_frontend_demo/models/status/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_table.freezed.dart';
part 'status_table.g.dart';

@freezed
class StatusTable with _$StatusTable {
  factory StatusTable({
    @JsonKey(name: 'Status') List<Status>? status,
  }) = _StatusTable;

  factory StatusTable.fromJson(Map<String, dynamic> json) =>
      _$StatusTableFromJson(json);

  static StatusTable get testModel => StatusTable(
        status: [
          Status(
            statusId: '1',
            count: '7674',
            status: 'Finished',
          ),
          Status(
            statusId: '2',
            count: '147',
            status: 'Disqualified',
          ),
        ],
      );

  static String get testModelJson => '''
  {
    "Status": [
      {
        "statusId": "1",
        "count": "7674",
        "status": "Finished"
      },
      {
        "statusId": "2",
        "count": "147",
        "status": "Disqualified"
      }
    ]
  }
  ''';
}
