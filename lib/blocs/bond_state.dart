import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/bond_model.dart';

part 'bond_state.freezed.dart';

@freezed
class BondState with _$BondState {
  // Initial state, before anything happens.
  const factory BondState.initial() = _Initial;

  // Loading state, for when we are fetching data.
  const factory BondState.loading() = _Loading;

  // Loaded state, when we have the data successfully.
  const factory BondState.loaded({
    // The original, complete list of bonds from the API.
    required List<Bond> allBonds,
    // The list of bonds to be displayed after filtering.
    required List<Bond> filteredBonds,
    // The current search text entered by the user.
    required String searchQuery,
  }) = _Loaded;

  // Error state, if something goes wrong.
  const factory BondState.error({required String message}) = _Error;
}
