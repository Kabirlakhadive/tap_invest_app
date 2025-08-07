import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest_app/data/models/monthly_data_model.dart';

part 'financials_model.freezed.dart';
part 'financials_model.g.dart';

@freezed
class FinancialsModel with _$FinancialsModel {
  const factory FinancialsModel({
    required List<MonthlyDataModel> ebitda,
    required List<MonthlyDataModel> revenue,
  }) = _FinancialsModel;

  factory FinancialsModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialsModelFromJson(json);
}
