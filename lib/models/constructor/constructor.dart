import 'package:freezed_annotation/freezed_annotation.dart';

part 'constructor.freezed.dart';
part 'constructor.g.dart';

@freezed
class Constructor with _$Constructor {
  const factory Constructor({
    String? constructorId,
    String? url,
    String? name,
    String? nationality,
  }) = _Constructor;

  factory Constructor.fromJson(Map<String, dynamic> json) =>
      _$ConstructorFromJson(json);

  static Constructor get testModel => const Constructor(
        constructorId: 'adams',
        url: 'http://en.wikipedia.org/wiki/Adams_(constructor)',
        name: 'Adams',
        nationality: 'American',
      );

  static String get testModelJson => '''
  {
    "constructorId": "adams",
    "url": "http://en.wikipedia.org/wiki/Adams_(constructor)",
    "name": "Adams",
    "nationality": "American"
  }
  ''';
}
