import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';

part 'bond_list_response.freezed.dart';
part 'bond_list_response.g.dart';

@freezed
class BondListResponse with _$BondListResponse {
  const factory BondListResponse({required List<Bond> data}) =
      _BondListResponse;

  factory BondListResponse.fromJson(Map<String, dynamic> json) =>
      _$BondListResponseFromJson(json);
}
