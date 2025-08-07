import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_data_model.freezed.dart';
part 'monthly_data_model.g.dart';

@freezed
class MonthlyDataModel with _$MonthlyDataModel {
  const factory MonthlyDataModel({required String month, required int value}) =
      _MonthlyDataModel;

  factory MonthlyDataModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataModelFromJson(json);
}
