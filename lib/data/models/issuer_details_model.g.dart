// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuer_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IssuerDetailsModelImpl _$$IssuerDetailsModelImplFromJson(
  Map<String, dynamic> json,
) => _$IssuerDetailsModelImpl(
  issuerName: json['issuer_name'] as String,
  typeOfIssuer: json['type_of_issuer'] as String,
  sector: json['sector'] as String,
  industry: json['industry'] as String,
  issuerNature: json['issuer_nature'] as String,
  cin: json['cin'] as String,
  leadManager: json['lead_manager'] as String,
  registrar: json['registrar'] as String,
  debentureTrustee: json['debenture_trustee'] as String,
);

Map<String, dynamic> _$$IssuerDetailsModelImplToJson(
  _$IssuerDetailsModelImpl instance,
) => <String, dynamic>{
  'issuer_name': instance.issuerName,
  'type_of_issuer': instance.typeOfIssuer,
  'sector': instance.sector,
  'industry': instance.industry,
  'issuer_nature': instance.issuerNature,
  'cin': instance.cin,
  'lead_manager': instance.leadManager,
  'registrar': instance.registrar,
  'debenture_trustee': instance.debentureTrustee,
};
