import 'package:flutter_test/flutter_test.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';
import 'dart:convert';

void main() {
  group('Bond Model', () {
    test('should correctly parse from JSON', () {
      final jsonString = '''
      {
        "logo": "https://example.com/logo.png",
        "isin": "INE123456789",
        "rating": "AAA",
        "company_name": "Test Company Ltd",
        "tags": ["Tag1", "Tag2"]
      }
      ''';
      final Map<String, dynamic> jsonMap = json.decode(jsonString);

      final bond = Bond.fromJson(jsonMap);

      expect(bond.logo, "https://example.com/logo.png");
      expect(bond.isin, "INE123456789");
      expect(bond.rating, "AAA");
      expect(bond.companyName, "Test Company Ltd");
      expect(bond.tags, ["Tag1", "Tag2"]);
    });
  });
}
