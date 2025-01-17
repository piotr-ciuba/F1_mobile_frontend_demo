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
}
