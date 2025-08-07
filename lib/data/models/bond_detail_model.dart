import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/financials_model.dart';
import 'package:tap_invest_app/data/models/issuer_details_model.dart';
import 'package:tap_invest_app/data/models/pros_and_cons_model.dart';

part 'bond_detail_model.freezed.dart';
part 'bond_detail_model.g.dart';

@freezed
class BondDetailModel with _$BondDetailModel {
  const factory BondDetailModel({
    required String logo,
    @JsonKey(name: 'company_name') required String companyName,
    required String description,
    required String isin,
    required String status,
    @JsonKey(name: 'pros_and_cons') required ProsAndConsModel prosAndCons,
    required FinancialsModel financials,
    @JsonKey(name: 'issuer_details') required IssuerDetailsModel issuerDetails,
  }) = _BondDetailModel;

  factory BondDetailModel.fromJson(Map<String, dynamic> json) =>
      _$BondDetailModelFromJson(json);
}
