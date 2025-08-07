import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/bond_detail_model.dart';

part 'bond_detail_state.freezed.dart';

@freezed
class BondDetailState with _$BondDetailState {
  // Use public names for all generated classes
  const factory BondDetailState.initial() = Initial;
  const factory BondDetailState.loading() = Loading;
  const factory BondDetailState.loaded({required BondDetailModel bondDetail}) =
      Loaded;
  const factory BondDetailState.error({required String message}) = Error;
}
