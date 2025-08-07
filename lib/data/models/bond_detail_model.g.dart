// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondDetailModelImpl _$$BondDetailModelImplFromJson(
  Map<String, dynamic> json,
) => _$BondDetailModelImpl(
  logo: json['logo'] as String,
  companyName: json['company_name'] as String,
  description: json['description'] as String,
  isin: json['isin'] as String,
  status: json['status'] as String,
  prosAndCons: ProsAndConsModel.fromJson(
    json['pros_and_cons'] as Map<String, dynamic>,
  ),
  financials: FinancialsModel.fromJson(
    json['financials'] as Map<String, dynamic>,
  ),
  issuerDetails: IssuerDetailsModel.fromJson(
    json['issuer_details'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$BondDetailModelImplToJson(
  _$BondDetailModelImpl instance,
) => <String, dynamic>{
  'logo': instance.logo,
  'company_name': instance.companyName,
  'description': instance.description,
  'isin': instance.isin,
  'status': instance.status,
  'pros_and_cons': instance.prosAndCons,
  'financials': instance.financials,
  'issuer_details': instance.issuerDetails,
};
