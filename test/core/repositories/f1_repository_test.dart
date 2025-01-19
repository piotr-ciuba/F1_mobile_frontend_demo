import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/core/repositories/f1_repository.dart';
import 'package:f1_mobile_frontend_demo/models/race/race.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'f1_repository_test.mocks.dart';

@GenerateMocks([F1Service])
void main() {
  late F1Repository f1Repository;
  late MockF1Service mockF1Service;

  setUp(() {
    mockF1Service = MockF1Service();
    f1Repository = F1Repository(mockF1Service);
  });

  group('F1Repository Tests', () {
    test('getF1Races should return a list of races', () async {
      final response = Response(
        data: {
          'MRData': {
            'RaceTable': {
              'Races': [
                Race.testModel.toJson(),
              ]
            }
          }
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: '/api/races'),
      );

      when(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: 15,
      )).thenAnswer((_) async => response);

      final result = await f1Repository.getF1Races(pageLimit: 15);

      expect(result, isNotNull);
      expect(result, isA<List<Race>>());
      expect(result?.first.season, Race.testModel.season);
      expect(result?.first.round, Race.testModel.round);

      verify(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: anyNamed('pageLimit'),
      ));
      verifyNoMoreInteractions(mockF1Service);
    });

    test('getF1Races should return null if races are missing in the response',
        () async {
      final response = Response(
        data: {
          'MRData': {
            'RaceTable': {'Races': null}
          }
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: '/api/races'),
      );

      when(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: anyNamed('pageLimit'),
      )).thenAnswer((_) async => response);

      final result = await f1Repository.getF1Races();

      expect(result, isNull);
      verify(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: anyNamed('pageLimit'),
      ));
      verifyNoMoreInteractions(mockF1Service);
    });

    test('getF1Races should handle pageLimit correctly', () async {
      final response = Response(
        data: {
          'MRData': {
            'RaceTable': {
              'Races': [
                Race.testModel.toJson(),
              ]
            }
          }
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: '/api/races'),
      );

      when(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: 30,
      )).thenAnswer((_) async => response);

      final result = await f1Repository.getF1Races(pageLimit: 50);

      expect(result, isNotNull);
      expect(result?.first.season, Race.testModel.season);
      expect(result?.first.round, Race.testModel.round);

      verify(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: 30,
      ));
      verifyNoMoreInteractions(mockF1Service);
    });

    test('getF1Races should handle error responses gracefully', () async {
      final response = Response(
        data: {'error': 'Internal server error'},
        statusCode: 500,
        requestOptions: RequestOptions(path: '/api/races'),
      );

      when(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: anyNamed('pageLimit'),
      )).thenAnswer((_) async => response);

      final result = await f1Repository.getF1Races(pageLimit: 15);

      expect(result, isNull);

      verify(mockF1Service.getF1Resource(
        resource: F1Resource.races,
        pageLimit: anyNamed('pageLimit'),
      ));
      verifyNoMoreInteractions(mockF1Service);
    });
  });
}
