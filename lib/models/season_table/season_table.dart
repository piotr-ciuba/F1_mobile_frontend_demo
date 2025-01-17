import 'package:f1_mobile_frontend_demo/models/season/season.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_table.freezed.dart';
part 'season_table.g.dart';

@freezed
class SeasonTable with _$SeasonTable {
  factory SeasonTable({
    @JsonKey(name: 'Seasons') List<Season>? seasons,
  }) = _SeasonTable;

  factory SeasonTable.fromJson(Map<String, dynamic> json) =>
      _$SeasonTableFromJson(json);
}
