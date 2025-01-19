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

  static SeasonTable get testModel => SeasonTable(
        seasons: [
          Season(
            season: '1950',
            url: 'https://en.wikipedia.org/wiki/1950_Formula_One_season',
          ),
          Season(
            season: '1951',
            url: 'https://en.wikipedia.org/wiki/1951_Formula_One_season',
          ),
        ],
      );

  static String get testModelJson => '''
  {
    "Seasons": [
      {
        "season": "1950",
        "url": "https://en.wikipedia.org/wiki/1950_Formula_One_season"
      },
      {
        "season": "1951",
        "url": "https://en.wikipedia.org/wiki/1951_Formula_One_season"
      }
    ]
  }
  ''';
}
