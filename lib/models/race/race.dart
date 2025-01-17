import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:f1_mobile_frontend_demo/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'race.freezed.dart';
part 'race.g.dart';

@freezed
class Race with _$Race {
  const factory Race({
    String? season,
    String? round,
    String? url,
    String? raceName,
    @JsonKey(name: 'Circuit') Circuit? circuit,
    String? date,
  }) = _Race;

  factory Race.fromJson(Map<String, dynamic> json) => _$RaceFromJson(json);

  static Race get testModel => const Race(
        season: '1950',
        round: '1',
        url: 'https://en.wikipedia.org/wiki/1950_British_Grand_Prix',
        raceName: 'British Grand Prix',
        circuit: Circuit(
          circuitId: 'silverstone',
          url: 'https://en.wikipedia.org/wiki/Silverstone_Circuit',
          circuitName: 'Silverstone Circuit',
          location: Location(
            lat: '52.0786',
            long: '-1.01694',
            locality: 'Silverstone',
            country: 'UK',
          ),
        ),
        date: '1950-05-13',
      );

  static String get testModelJson => '''
  {
    "season": "1950",
    "round": "1",
    "url": "https://en.wikipedia.org/wiki/1950_British_Grand_Prix",
    "raceName": "British Grand Prix",
    "Circuit": {
        "circuitId": "silverstone",
        "url": "https://en.wikipedia.org/wiki/Silverstone_Circuit",
        "circuitName": "Silverstone Circuit",
        "Location": {
            "lat": "52.0786",
            "long": "-1.01694",
            "locality": "Silverstone",
            "country": "UK"
        }
    },
    "date": "1950-05-13"
  }
  ''';
}
