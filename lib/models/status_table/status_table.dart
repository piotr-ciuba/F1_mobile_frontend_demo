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
}
