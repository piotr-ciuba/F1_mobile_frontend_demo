import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Race', () {
    test('fromJson should correctly deserialize JSON into Race', () {
      final Map<String, dynamic> json = {
        'season': '1950',
        'round': '1',
        'url': 'https://en.wikipedia.org/wiki/1950_British_Grand_Prix',
        'raceName': 'British Grand Prix',
        'Circuit': {
          'circuitId': 'silverstone',
          'url': 'https://en.wikipedia.org/wiki/Silverstone_Circuit',
          'circuitName': 'Silverstone Circuit',
          'Location': {
            'lat': '52.0786',
            'long': '-1.01694',
            'locality': 'Silverstone',
            'country': 'UK'
          }
        },
        'date': '1950-05-13'
      };

      final race = Race.fromJson(json);

      expect(race.season, '1950');
      expect(race.round, '1');
      expect(race.url, 'https://en.wikipedia.org/wiki/1950_British_Grand_Prix');
      expect(race.raceName, 'British Grand Prix');
      expect(race.circuit?.circuitId, 'silverstone');
      expect(race.circuit?.circuitName, 'Silverstone Circuit');
      expect(race.circuit?.location?.lat, '52.0786');
      expect(race.circuit?.location?.long, '-1.01694');
      expect(race.circuit?.location?.locality, 'Silverstone');
      expect(race.circuit?.location?.country, 'UK');
      expect(race.date, '1950-05-13');
    });

    test('toJson should correctly serialize Race to JSON', () {
      final race = Race.testModel;
      const expectedJson = {
        'season': '1950',
        'round': '1',
        'url': 'https://en.wikipedia.org/wiki/1950_British_Grand_Prix',
        'raceName': 'British Grand Prix',
        'Circuit': {
          'circuitId': 'silverstone',
          'url': 'https://en.wikipedia.org/wiki/Silverstone_Circuit',
          'circuitName': 'Silverstone Circuit',
          'Location': {
            'lat': '52.0786',
            'long': '-1.01694',
            'locality': 'Silverstone',
            'country': 'UK'
          }
        },
        'date': '1950-05-13'
      };

      final jsonMap = race.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final race = Race.testModel;

      expect(race.season, '1950');
      expect(race.round, '1');
      expect(race.url, 'https://en.wikipedia.org/wiki/1950_British_Grand_Prix');
      expect(race.raceName, 'British Grand Prix');
      expect(race.circuit?.circuitId, 'silverstone');
      expect(race.circuit?.circuitName, 'Silverstone Circuit');
      expect(race.circuit?.location?.lat, '52.0786');
      expect(race.circuit?.location?.long, '-1.01694');
      expect(race.circuit?.location?.locality, 'Silverstone');
      expect(race.circuit?.location?.country, 'UK');
      expect(race.date, '1950-05-13');
    });
  });
}
