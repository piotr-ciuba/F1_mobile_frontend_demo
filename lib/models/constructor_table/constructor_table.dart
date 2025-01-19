import 'package:f1_mobile_frontend_demo/models/constructor/constructor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'constructor_table.freezed.dart';
part 'constructor_table.g.dart';

@freezed
class ConstructorTable with _$ConstructorTable {
  factory ConstructorTable({
    @JsonKey(name: 'Constructors') List<Constructor>? constructors,
  }) = _ConstructorTable;

  factory ConstructorTable.fromJson(Map<String, dynamic> json) =>
      _$ConstructorTableFromJson(json);

  static ConstructorTable get testModel => ConstructorTable(
        constructors: [
          Constructor(
            constructorId: 'adams',
            url: 'http://en.wikipedia.org/wiki/Adams_(constructor)',
            name: 'Adams',
            nationality: 'American',
          ),
          Constructor(
            constructorId: 'afm',
            url:
                'http://en.wikipedia.org/wiki/Alex_von_Falkenhausen_Motorenbau',
            name: 'AFM',
            nationality: 'German',
          ),
        ],
      );

  static String get testModelJson => '''
  {
    "Constructors": [
        {
            "constructorId": "adams",
            "url": "http://en.wikipedia.org/wiki/Adams_(constructor)",
            "name": "Adams",
            "nationality": "American"
        },
        {
            "constructorId": "afm",
            "url": "http://en.wikipedia.org/wiki/Alex_von_Falkenhausen_Motorenbau",
            "name": "AFM",
            "nationality": "German"
        }
    ]
  }
  ''';
}
