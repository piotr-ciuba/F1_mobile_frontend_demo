import 'package:freezed_annotation/freezed_annotation.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
  factory Season({
    String? season,
    String? url,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

  static Season get testModel => Season(
        season: '2021',
        url:
            'https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship',
      );

  static String get testModelJson => '''
  {
    "season": "2021",
    "url": "https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship"
  }
  ''';
}
