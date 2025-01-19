import 'package:f1_mobile_frontend_demo/models/circuit/circuit.dart';
import 'package:f1_mobile_frontend_demo/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circuit_table.freezed.dart';
part 'circuit_table.g.dart';

@freezed
class CircuitTable with _$CircuitTable {
  factory CircuitTable({
    @JsonKey(name: 'Circuits') List<Circuit>? circuits,
  }) = _CircuitTable;

  factory CircuitTable.fromJson(Map<String, dynamic> json) =>
      _$CircuitTableFromJson(json);

  static CircuitTable get testModel => CircuitTable(
        circuits: [
          Circuit(
            circuitId: 'adelaide',
            url: 'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit',
            circuitName: 'Adelaide Street Circuit',
            location: Location(
              lat: '-34.9272',
              long: '138.617',
              locality: 'Adelaide',
              country: 'Australia',
            ),
          ),
          Circuit(
            circuitId: 'ain-diab',
            url: 'https://en.wikipedia.org/wiki/Ain-Diab_Circuit',
            circuitName: 'Ain Diab',
            location: Location(
              lat: '33.5786',
              long: '-7.6875',
              locality: 'Casablanca',
              country: 'Morocco',
            ),
          ),
        ],
      );

  static String get testModelJson => '''
  {
    "Circuits": [
        {
            "circuitId": "adelaide",
            "url": "https://en.wikipedia.org/wiki/Adelaide_Street_Circuit",
            "circuitName": "Adelaide Street Circuit",
            "Location": {
                "lat": "-34.9272",
                "long": "138.617",
                "locality": "Adelaide",
                "country": "Australia"
            }
        },
        {
            "circuitId": "ain-diab",
            "url": "https://en.wikipedia.org/wiki/Ain-Diab_Circuit",
            "circuitName": "Ain Diab",
            "Location": {
                "lat": "33.5786",
                "long": "-7.6875",
                "locality": "Casablanca",
                "country": "Morocco"
            }
        }
    ]
  }
  ''';
}
