// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MonthlyDataModelImpl _$$MonthlyDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$MonthlyDataModelImpl(
  month: json['month'] as String,
  value: (json['value'] as num).toInt(),
);

Map<String, dynamic> _$$MonthlyDataModelImplToJson(
  _$MonthlyDataModelImpl instance,
) => <String, dynamic>{'month': instance.month, 'value': instance.value};
