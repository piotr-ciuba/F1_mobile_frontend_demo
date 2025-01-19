import 'package:f1_mobile_frontend_demo/models/season/season.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Season', () {
    test('fromJson should correctly deserialize JSON into Season', () {
      final Map<String, dynamic> json = {
        'season': '2021',
        'url':
            'https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship'
      };

      final season = Season.fromJson(json);

      expect(season.season, '2021');
      expect(season.url,
          'https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship');
    });

    test('toJson should correctly serialize Season to JSON', () {
      final season = Season.testModel;
      const expectedJson = {
        'season': '2021',
        'url':
            'https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship'
      };

      final jsonMap = season.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final season = Season.testModel;

      expect(season.season, '2021');
      expect(season.url,
          'https://en.wikipedia.org/wiki/2021_Formula_One_World_Championship');
    });
  });
}
