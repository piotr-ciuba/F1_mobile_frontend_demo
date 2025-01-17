import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_table.freezed.dart';
part 'race_table.g.dart';

@freezed
class RaceTable with _$RaceTable {
  factory RaceTable({
    @JsonKey(name: 'Races') List<Race>? races,
  }) = _RaceTable;

  factory RaceTable.fromJson(Map<String, dynamic> json) =>
      _$RaceTableFromJson(json);
}
