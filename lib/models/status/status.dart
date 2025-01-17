import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    String? statusId,
    String? count,
    String? status,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

  static Status get testModel => const Status(
        statusId: '1',
        count: '7674',
        status: 'Finished',
      );

  static String get testModelJson => '''
  {
    "statusId": "1",
    "count": "7674",
    "status": "Finished"
  }
  ''';
}
