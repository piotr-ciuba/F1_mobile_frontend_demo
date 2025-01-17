import 'package:f1_mobile_frontend_demo/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circuit.freezed.dart';
part 'circuit.g.dart';

@freezed
class Circuit with _$Circuit {
  const factory Circuit({
    String? circuitId,
    String? url,
    String? circuitName,
    @JsonKey(name: 'Location') Location? location,
  }) = _Circuit;

  factory Circuit.fromJson(Map<String, dynamic> json) =>
      _$CircuitFromJson(json);

  static Circuit get testModel => const Circuit(
        circuitId: 'adelaide',
        url: 'https://en.wikipedia.org/wiki/Adelaide_Street_Circuit',
        circuitName: 'Adelaide Street Circuit',
        location: Location(
          lat: '-34.9272',
          long: '138.617',
          locality: 'Adelaide',
          country: 'Australia',
        ),
      );

  static String get testModelJson => '''
  {
    "circuitId": "adelaide",
    "url": "https://en.wikipedia.org/wiki/Adelaide_Street_Circuit",
    "circuitName": "Adelaide Street Circuit",
    "Location": {
      "lat": -34.9272,
      "long": 138.617,
      "locality": "Adelaide",
      "country": "Australia"
    }
  }
  ''';
}
