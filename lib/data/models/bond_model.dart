import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@freezed
class Bond with _$Bond {
  const factory Bond({
    required String logo,
    required String isin,
    required String rating,
    // Map 'company_name' from JSON to our 'companyName' field
    @JsonKey(name: 'company_name') required String companyName,
    required List<String> tags,
  }) = _Bond;

  factory Bond.fromJson(Map<String, dynamic> json) => _$BondFromJson(json);
}
