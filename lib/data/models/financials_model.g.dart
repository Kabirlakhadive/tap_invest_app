// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financials_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancialsModelImpl _$$FinancialsModelImplFromJson(
  Map<String, dynamic> json,
) => _$FinancialsModelImpl(
  ebitda: (json['ebitda'] as List<dynamic>)
      .map((e) => MonthlyDataModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  revenue: (json['revenue'] as List<dynamic>)
      .map((e) => MonthlyDataModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$FinancialsModelImplToJson(
  _$FinancialsModelImpl instance,
) => <String, dynamic>{'ebitda': instance.ebitda, 'revenue': instance.revenue};
