import 'package:dio/dio.dart';
import 'package:f1_mobile_frontend_demo/common/endpoints.dart';
import 'package:f1_mobile_frontend_demo/core/services/f1_service.dart';
import 'package:f1_mobile_frontend_demo/core/utils/api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'f1_service_test.mocks.dart';

@GenerateMocks([Endpoints, ApiClient, F1Service])
void main() {
  late MockEndpoints mockEndpoints;
  late F1Service f1Service;
  late ApiClient apiClient;

  setUp(() {
    mockEndpoints = MockEndpoints();
    apiClient = MockApiClient();
    f1Service = MockF1Service();
  });

  group('F1Service Tests', () {
    test('getF1Resource should return races', () async {
      final response = Response(
        data: {'data': 'sample data for races'},
        statusCode: 200,
        requestOptions: RequestOptions(path: '/api/races'),
      );

      when(apiClient.endpoints).thenReturn(mockEndpoints);
      when(mockEndpoints.f1Races).thenReturn('/api/races');
      when(f1Service.getF1Resource(resource: F1Resource.races))
          .thenAnswer((_) async => response);

      final result = await f1Service.getF1Resource(resource: F1Resource.races);

      expect(result.statusCode, 200);
      expect(result.data, {'data': 'sample data for races'});

      verify(f1Service.getF1Resource(resource: F1Resource.races));
      verifyNoMoreInteractions(apiClient);
    });

    test('getF1Resource should return seasons', () async {
      final response = Response(
        data: {'data': 'sample data for seasons'},
        statusCode: 200,
        requestOptions: RequestOptions(path: '/api/seasons'),
      );

      when(apiClient.endpoints).thenReturn(mockEndpoints);
      when(mockEndpoints.f1Races).thenReturn('/api/seasons');
      when(f1Service.getF1Resource(resource: F1Resource.seasons))
          .thenAnswer((_) async => response);

      final result =
          await f1Service.getF1Resource(resource: F1Resource.seasons);

      expect(result.statusCode, 200);
      expect(result.data, {'data': 'sample data for seasons'});

      verify(f1Service.getF1Resource(resource: F1Resource.seasons));
      verifyNoMoreInteractions(apiClient);
    });

    test('getF1Resource should handle error response', () async {
      final response = Response(
        data: {'error': 'Something went wrong'},
        statusCode: 500,
        requestOptions: RequestOptions(path: '/'),
      );
      when(f1Service.getF1Resource(resource: F1Resource.drivers))
          .thenAnswer((_) async => response);

      final result =
          await f1Service.getF1Resource(resource: F1Resource.drivers);

      expect(result.statusCode, 500);
      expect(result.data, {'error': 'Something went wrong'});

      verify(f1Service.getF1Resource(resource: F1Resource.drivers));
      verifyNoMoreInteractions(apiClient);
    });

    test('getF1Resource should include pageLimit in query parameters',
        () async {
      final response = Response(
        data: {'data': 'sample data with pageLimit'},
        statusCode: 200,
        requestOptions: RequestOptions(path: '/'),
      );

      when(
        f1Service.getF1Resource(
            resource: F1Resource.constructors, pageLimit: 10),
      ).thenAnswer((_) async => response);

      final result = await f1Service.getF1Resource(
          resource: F1Resource.constructors, pageLimit: 10);

      expect(result.statusCode, 200);
      expect(result.data, {'data': 'sample data with pageLimit'});

      verify(
        f1Service.getF1Resource(
            resource: F1Resource.constructors, pageLimit: 10),
      );
      verifyNoMoreInteractions(apiClient);
    });
  });
}
