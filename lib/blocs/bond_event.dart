import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_event.freezed.dart';

@freezed
class BondEvent with _$BondEvent {
  // This event will be triggered to fetch the list of bonds.
  const factory BondEvent.fetchRequested() = FetchRequested;
  const factory BondEvent.searchQueryChanged(String query) = SearchQueryChanged;
}
