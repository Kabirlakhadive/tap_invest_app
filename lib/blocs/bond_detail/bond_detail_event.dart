import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_detail_event.freezed.dart';

@freezed
class BondDetailEvent with _$BondDetailEvent {
  // Use a public name here to generate a public class
  const factory BondDetailEvent.fetchDetailRequested() = FetchDetailRequested;
}
