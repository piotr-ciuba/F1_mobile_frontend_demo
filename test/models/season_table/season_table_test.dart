import 'package:f1_mobile_frontend_demo/models/season_table/season_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SeasonTable', () {
    test('fromJson should correctly deserialize JSON into SeasonTable', () {
      final Map<String, dynamic> json = {
        'Seasons': [
          {
            'season': '1950',
            'url': 'https://en.wikipedia.org/wiki/1950_Formula_One_season'
          },
          {
            'season': '1951',
            'url': 'https://en.wikipedia.org/wiki/1951_Formula_One_season'
          }
        ]
      };

      final seasonTable = SeasonTable.fromJson(json);

      expect(seasonTable.seasons?.length, 2);
      expect(seasonTable.seasons?.first.season, '1950');
      expect(seasonTable.seasons?.first.url,
          'https://en.wikipedia.org/wiki/1950_Formula_One_season');
      expect(seasonTable.seasons?.last.season, '1951');
      expect(seasonTable.seasons?.last.url,
          'https://en.wikipedia.org/wiki/1951_Formula_One_season');
    });

    test('toJson should correctly serialize SeasonTable to JSON', () {
      final seasonTable = SeasonTable.testModel;
      const expectedJson = {
        'Seasons': [
          {
            'season': '1950',
            'url': 'https://en.wikipedia.org/wiki/1950_Formula_One_season'
          },
          {
            'season': '1951',
            'url': 'https://en.wikipedia.org/wiki/1951_Formula_One_season'
          }
        ]
      };

      final jsonMap = seasonTable.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final seasonTable = SeasonTable.testModel;

      final firstSeason = seasonTable.seasons?.first;
      final secondSeason = seasonTable.seasons?.last;

      expect(firstSeason?.season, '1950');
      expect(firstSeason?.url,
          'https://en.wikipedia.org/wiki/1950_Formula_One_season');
      expect(secondSeason?.season, '1951');
      expect(secondSeason?.url,
          'https://en.wikipedia.org/wiki/1951_Formula_One_season');
    });
  });
}
