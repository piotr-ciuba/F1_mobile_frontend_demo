import 'package:f1_mobile_frontend_demo/models/race_table/race_table.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  group('RaceTable Tests', () {
    test('Test RaceTable from JSON', () {
      final Map<String, dynamic> jsonMap = json.decode(RaceTable.testModelJson);

      final raceTable = RaceTable.fromJson(jsonMap);

      expect(raceTable.races?.length, 2);
      expect(raceTable.races?[0].season, '1951');
      expect(raceTable.races?[0].round, '6');
      expect(raceTable.races?[0].raceName, 'German Grand Prix');
      expect(raceTable.races?[0].circuit?.circuitName, 'Nürburgring');
      expect(raceTable.races?[0].circuit?.location?.country, 'Germany');
      expect(raceTable.races?[1].date, '1951-09-16');
    });

    test('Test RaceTable to JSON', () {
      final raceTable = RaceTable.testModel;

      final Map<String, dynamic> jsonMap = raceTable.toJson();

      expect(jsonMap['Races'], isNotNull);
      expect((jsonMap['Races'] as List).length, 2);
      expect(jsonMap['Races'][0]['season'], '1951');
      expect(jsonMap['Races'][0]['round'], '6');
      expect(jsonMap['Races'][0]['raceName'], 'German Grand Prix');
      expect(jsonMap['Races'][0]['Circuit']['circuitName'], 'Nürburgring');
      expect(jsonMap['Races'][0]['Circuit']['Location']['country'], 'Germany');
      expect(jsonMap['Races'][1]['date'], '1951-09-16');
    });

    test('Test RaceTable Static testModel', () {
      final raceTable = RaceTable.testModel;

      expect(raceTable.races?.length, 2);
      expect(raceTable.races?[0].season, '1951');
      expect(raceTable.races?[0].round, '6');
      expect(raceTable.races?[0].raceName, 'German Grand Prix');
      expect(raceTable.races?[1].raceName, 'Italian Grand Prix');
      expect(raceTable.races?[1].date, '1951-09-16');
    });
  });
}
