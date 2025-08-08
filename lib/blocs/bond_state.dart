import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';

part 'bond_state.freezed.dart';

@freezed
class BondState with _$BondState {
  const factory BondState.initial() = _Initial;

  const factory BondState.loading() = _Loading;

  const factory BondState.loaded({
    required List<Bond> allBonds,

    required List<Bond> filteredBonds,

    required String searchQuery,
  }) = _Loaded;

  const factory BondState.error({required String message}) = _Error;
}
