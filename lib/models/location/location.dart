import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    String? lat,
    String? long,
    String? locality,
    String? country,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static Location get testModel => const Location(
        lat: '43.7347',
        long: '7.42056',
        locality: 'Monte-Carlo',
        country: 'Monaco',
      );

  static String get testModelJson => '''
  {
    "lat": "43.7347",
    "long": "7.42056",
    "locality": "Monte-Carlo",
    "country": "Monaco"
  }
  ''';
}
