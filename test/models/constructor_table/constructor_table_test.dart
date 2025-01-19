import 'package:f1_mobile_frontend_demo/models/constructor_table/constructor_table.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ConstructorTable', () {
    test('fromJson should correctly deserialize JSON into ConstructorTable',
        () {
      final Map<String, dynamic> json = {
        'Constructors': [
          {
            'constructorId': 'adams',
            'url': 'http://en.wikipedia.org/wiki/Adams_(constructor)',
            'name': 'Adams',
            'nationality': 'American'
          },
          {
            'constructorId': 'afm',
            'url':
                'http://en.wikipedia.org/wiki/Alex_von_Falkenhausen_Motorenbau',
            'name': 'AFM',
            'nationality': 'German'
          }
        ]
      };

      final constructorTable = ConstructorTable.fromJson(json);

      expect(constructorTable.constructors?.length, 2);
      expect(constructorTable.constructors?.first.constructorId, 'adams');
      expect(constructorTable.constructors?.last.constructorId, 'afm');
    });

    test('toJson should correctly serialize ConstructorTable to JSON', () {
      final constructorTable = ConstructorTable.testModel;
      const expectedJson = {
        'Constructors': [
          {
            'constructorId': 'adams',
            'url': 'http://en.wikipedia.org/wiki/Adams_(constructor)',
            'name': 'Adams',
            'nationality': 'American'
          },
          {
            'constructorId': 'afm',
            'url':
                'http://en.wikipedia.org/wiki/Alex_von_Falkenhausen_Motorenbau',
            'name': 'AFM',
            'nationality': 'German'
          }
        ]
      };

      final jsonMap = constructorTable.toJson();
      expect(jsonMap, expectedJson);
    });

    test('testModel should match the expected data', () {
      final constructorTable = ConstructorTable.testModel;

      final firstConstructor = constructorTable.constructors?.first;
      final secondConstructor = constructorTable.constructors?.last;

      expect(firstConstructor?.constructorId, 'adams');
      expect(firstConstructor?.name, 'Adams');
      expect(firstConstructor?.nationality, 'American');
      expect(secondConstructor?.constructorId, 'afm');
      expect(secondConstructor?.name, 'AFM');
      expect(secondConstructor?.nationality, 'German');
    });
  });
}
