import 'package:freezed_annotation/freezed_annotation.dart';

part 'issuer_details_model.freezed.dart';
part 'issuer_details_model.g.dart';

@freezed
class IssuerDetailsModel with _$IssuerDetailsModel {
  const factory IssuerDetailsModel({
    @JsonKey(name: 'issuer_name') required String issuerName,
    @JsonKey(name: 'type_of_issuer') required String typeOfIssuer,
    required String sector,
    required String industry,
    @JsonKey(name: 'issuer_nature') required String issuerNature,
    required String cin,
    @JsonKey(name: 'lead_manager') required String leadManager,
    required String registrar,
    @JsonKey(name: 'debenture_trustee') required String debentureTrustee,
  }) = _IssuerDetailsModel;

  factory IssuerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsModelFromJson(json);
}
