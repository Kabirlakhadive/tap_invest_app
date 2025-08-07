// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issuer_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IssuerDetailsModel _$IssuerDetailsModelFromJson(Map<String, dynamic> json) {
  return _IssuerDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$IssuerDetailsModel {
  @JsonKey(name: 'issuer_name')
  String get issuerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer => throw _privateConstructorUsedError;
  String get sector => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_nature')
  String get issuerNature => throw _privateConstructorUsedError;
  String get cin => throw _privateConstructorUsedError;
  @JsonKey(name: 'lead_manager')
  String get leadManager => throw _privateConstructorUsedError;
  String get registrar => throw _privateConstructorUsedError;
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee => throw _privateConstructorUsedError;

  /// Serializes this IssuerDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssuerDetailsModelCopyWith<IssuerDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuerDetailsModelCopyWith<$Res> {
  factory $IssuerDetailsModelCopyWith(
    IssuerDetailsModel value,
    $Res Function(IssuerDetailsModel) then,
  ) = _$IssuerDetailsModelCopyWithImpl<$Res, IssuerDetailsModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'issuer_name') String issuerName,
    @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
    String sector,
    String industry,
    @JsonKey(name: 'issuer_nature') String issuerNature,
    String cin,
    @JsonKey(name: 'lead_manager') String leadManager,
    String registrar,
    @JsonKey(name: 'debenture_trustee') String debentureTrustee,
  });
}

/// @nodoc
class _$IssuerDetailsModelCopyWithImpl<$Res, $Val extends IssuerDetailsModel>
    implements $IssuerDetailsModelCopyWith<$Res> {
  _$IssuerDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(
      _value.copyWith(
            issuerName: null == issuerName
                ? _value.issuerName
                : issuerName // ignore: cast_nullable_to_non_nullable
                      as String,
            typeOfIssuer: null == typeOfIssuer
                ? _value.typeOfIssuer
                : typeOfIssuer // ignore: cast_nullable_to_non_nullable
                      as String,
            sector: null == sector
                ? _value.sector
                : sector // ignore: cast_nullable_to_non_nullable
                      as String,
            industry: null == industry
                ? _value.industry
                : industry // ignore: cast_nullable_to_non_nullable
                      as String,
            issuerNature: null == issuerNature
                ? _value.issuerNature
                : issuerNature // ignore: cast_nullable_to_non_nullable
                      as String,
            cin: null == cin
                ? _value.cin
                : cin // ignore: cast_nullable_to_non_nullable
                      as String,
            leadManager: null == leadManager
                ? _value.leadManager
                : leadManager // ignore: cast_nullable_to_non_nullable
                      as String,
            registrar: null == registrar
                ? _value.registrar
                : registrar // ignore: cast_nullable_to_non_nullable
                      as String,
            debentureTrustee: null == debentureTrustee
                ? _value.debentureTrustee
                : debentureTrustee // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IssuerDetailsModelImplCopyWith<$Res>
    implements $IssuerDetailsModelCopyWith<$Res> {
  factory _$$IssuerDetailsModelImplCopyWith(
    _$IssuerDetailsModelImpl value,
    $Res Function(_$IssuerDetailsModelImpl) then,
  ) = __$$IssuerDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'issuer_name') String issuerName,
    @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
    String sector,
    String industry,
    @JsonKey(name: 'issuer_nature') String issuerNature,
    String cin,
    @JsonKey(name: 'lead_manager') String leadManager,
    String registrar,
    @JsonKey(name: 'debenture_trustee') String debentureTrustee,
  });
}

/// @nodoc
class __$$IssuerDetailsModelImplCopyWithImpl<$Res>
    extends _$IssuerDetailsModelCopyWithImpl<$Res, _$IssuerDetailsModelImpl>
    implements _$$IssuerDetailsModelImplCopyWith<$Res> {
  __$$IssuerDetailsModelImplCopyWithImpl(
    _$IssuerDetailsModelImpl _value,
    $Res Function(_$IssuerDetailsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(
      _$IssuerDetailsModelImpl(
        issuerName: null == issuerName
            ? _value.issuerName
            : issuerName // ignore: cast_nullable_to_non_nullable
                  as String,
        typeOfIssuer: null == typeOfIssuer
            ? _value.typeOfIssuer
            : typeOfIssuer // ignore: cast_nullable_to_non_nullable
                  as String,
        sector: null == sector
            ? _value.sector
            : sector // ignore: cast_nullable_to_non_nullable
                  as String,
        industry: null == industry
            ? _value.industry
            : industry // ignore: cast_nullable_to_non_nullable
                  as String,
        issuerNature: null == issuerNature
            ? _value.issuerNature
            : issuerNature // ignore: cast_nullable_to_non_nullable
                  as String,
        cin: null == cin
            ? _value.cin
            : cin // ignore: cast_nullable_to_non_nullable
                  as String,
        leadManager: null == leadManager
            ? _value.leadManager
            : leadManager // ignore: cast_nullable_to_non_nullable
                  as String,
        registrar: null == registrar
            ? _value.registrar
            : registrar // ignore: cast_nullable_to_non_nullable
                  as String,
        debentureTrustee: null == debentureTrustee
            ? _value.debentureTrustee
            : debentureTrustee // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IssuerDetailsModelImpl implements _IssuerDetailsModel {
  const _$IssuerDetailsModelImpl({
    @JsonKey(name: 'issuer_name') required this.issuerName,
    @JsonKey(name: 'type_of_issuer') required this.typeOfIssuer,
    required this.sector,
    required this.industry,
    @JsonKey(name: 'issuer_nature') required this.issuerNature,
    required this.cin,
    @JsonKey(name: 'lead_manager') required this.leadManager,
    required this.registrar,
    @JsonKey(name: 'debenture_trustee') required this.debentureTrustee,
  });

  factory _$IssuerDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssuerDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: 'issuer_name')
  final String issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  final String typeOfIssuer;
  @override
  final String sector;
  @override
  final String industry;
  @override
  @JsonKey(name: 'issuer_nature')
  final String issuerNature;
  @override
  final String cin;
  @override
  @JsonKey(name: 'lead_manager')
  final String leadManager;
  @override
  final String registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  final String debentureTrustee;

  @override
  String toString() {
    return 'IssuerDetailsModel(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuerDetailsModelImpl &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    issuerName,
    typeOfIssuer,
    sector,
    industry,
    issuerNature,
    cin,
    leadManager,
    registrar,
    debentureTrustee,
  );

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuerDetailsModelImplCopyWith<_$IssuerDetailsModelImpl> get copyWith =>
      __$$IssuerDetailsModelImplCopyWithImpl<_$IssuerDetailsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IssuerDetailsModelImplToJson(this);
  }
}

abstract class _IssuerDetailsModel implements IssuerDetailsModel {
  const factory _IssuerDetailsModel({
    @JsonKey(name: 'issuer_name') required final String issuerName,
    @JsonKey(name: 'type_of_issuer') required final String typeOfIssuer,
    required final String sector,
    required final String industry,
    @JsonKey(name: 'issuer_nature') required final String issuerNature,
    required final String cin,
    @JsonKey(name: 'lead_manager') required final String leadManager,
    required final String registrar,
    @JsonKey(name: 'debenture_trustee') required final String debentureTrustee,
  }) = _$IssuerDetailsModelImpl;

  factory _IssuerDetailsModel.fromJson(Map<String, dynamic> json) =
      _$IssuerDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: 'issuer_name')
  String get issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer;
  @override
  String get sector;
  @override
  String get industry;
  @override
  @JsonKey(name: 'issuer_nature')
  String get issuerNature;
  @override
  String get cin;
  @override
  @JsonKey(name: 'lead_manager')
  String get leadManager;
  @override
  String get registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssuerDetailsModelImplCopyWith<_$IssuerDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
