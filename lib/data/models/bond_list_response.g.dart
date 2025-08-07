// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BondListResponseImpl _$$BondListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BondListResponseImpl(
  data: (json['data'] as List<dynamic>)
      .map((e) => Bond.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$BondListResponseImplToJson(
  _$BondListResponseImpl instance,
) => <String, dynamic>{'data': instance.data};
