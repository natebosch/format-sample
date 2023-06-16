import 'package:flutter_test/flutter_test.dart';
import 'package:sghi_core/afya_moja_core/afya_moja_core.dart';
import 'package:sghi_core/afya_moja_core/src/domain/core/entities/identifier.dart';

void main() {
  group('Identifier', () {
    test('fromJson works correctly', () async {
      final Identifier identifierFromJson = Identifier.fromJson(
        <String, dynamic>{
          'id': 'testId',
          'type': IdentifierType.CCC.name,
          'value': 'myCCCNumber',
        },
      );

      expect(identifierFromJson.type, IdentifierType.CCC);
      expect(identifierFromJson.id, 'testId');
      expect(identifierFromJson.value, 'myCCCNumber');
      expect(Identifier.initial().type, IdentifierType.UNKNOWN);
    });
  });
}
