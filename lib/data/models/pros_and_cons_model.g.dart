// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pros_and_cons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProsAndConsModelImpl _$$ProsAndConsModelImplFromJson(
  Map<String, dynamic> json,
) => _$ProsAndConsModelImpl(
  pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
  cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$$ProsAndConsModelImplToJson(
  _$ProsAndConsModelImpl instance,
) => <String, dynamic>{'pros': instance.pros, 'cons': instance.cons};
