import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:f1_mobile_frontend_demo/models/location/location.dart';
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

  static RaceTable get testModel => RaceTable(
        races: [
          Race(
            season: '1951',
            round: '6',
            url: 'https://en.wikipedia.org/wiki/1951_German_Grand_Prix',
            raceName: 'German Grand Prix',
            circuit: Circuit(
              circuitId: 'nurburgring',
              url: 'https://en.wikipedia.org/wiki/N%C3%BCrburgring',
              circuitName: 'Nürburgring',
              location: Location(
                lat: '50.3356',
                long: '6.9475',
                locality: 'Nürburg',
                country: 'Germany',
              ),
            ),
            date: '1951-07-29',
          ),
          Race(
            season: '1951',
            round: '7',
            url: 'https://en.wikipedia.org/wiki/1951_Italian_Grand_Prix',
            raceName: 'Italian Grand Prix',
            circuit: Circuit(
              circuitId: 'monza',
              url: 'https://en.wikipedia.org/wiki/Monza_Circuit',
              circuitName: 'Autodromo Nazionale di Monza',
              location: Location(
                lat: '45.615599999999986',
                long: '9.28111',
                locality: 'Monza',
                country: 'Italy',
              ),
            ),
            date: '1951-09-16',
          ),
        ],
      );

  static String testModelJson = '''
  {
    "Races": [
          {
              "season": "1951",
              "round": "6",
              "url": "https://en.wikipedia.org/wiki/1951_German_Grand_Prix",
              "raceName": "German Grand Prix",
              "Circuit": {
                  "circuitId": "nurburgring",
                  "url": "https://en.wikipedia.org/wiki/N%C3%BCrburgring",
                  "circuitName": "Nürburgring",
                  "Location": {
                      "lat": "50.3356",
                      "long": "6.9475",
                      "locality": "Nürburg",
                      "country": "Germany"
                  }
              },
              "date": "1951-07-29"
          },
          {
              "season": "1951",
              "round": "7",
              "url": "https://en.wikipedia.org/wiki/1951_Italian_Grand_Prix",
              "raceName": "Italian Grand Prix",
              "Circuit": {
                  "circuitId": "monza",
                  "url": "https://en.wikipedia.org/wiki/Monza_Circuit",
                  "circuitName": "Autodromo Nazionale di Monza",
                  "Location": {
                      "lat": "45.615599999999986",
                      "long": "9.28111",
                      "locality": "Monza",
                      "country": "Italy"
                  }
              },
              "date": "1951-09-16"
          }
      ]
  }
  ''';
}
