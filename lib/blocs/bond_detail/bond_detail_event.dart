import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_detail_event.freezed.dart';

@freezed
class BondDetailEvent with _$BondDetailEvent {
  const factory BondDetailEvent.fetchDetailRequested() = FetchDetailRequested;
}
