// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BondDetailModel _$BondDetailModelFromJson(Map<String, dynamic> json) {
  return _BondDetailModel.fromJson(json);
}

/// @nodoc
mixin _$BondDetailModel {
  String get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String get companyName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get isin => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pros_and_cons')
  ProsAndConsModel get prosAndCons => throw _privateConstructorUsedError;
  FinancialsModel get financials => throw _privateConstructorUsedError;
  @JsonKey(name: 'issuer_details')
  IssuerDetailsModel get issuerDetails => throw _privateConstructorUsedError;

  /// Serializes this BondDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BondDetailModelCopyWith<BondDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondDetailModelCopyWith<$Res> {
  factory $BondDetailModelCopyWith(
    BondDetailModel value,
    $Res Function(BondDetailModel) then,
  ) = _$BondDetailModelCopyWithImpl<$Res, BondDetailModel>;
  @useResult
  $Res call({
    String logo,
    @JsonKey(name: 'company_name') String companyName,
    String description,
    String isin,
    String status,
    @JsonKey(name: 'pros_and_cons') ProsAndConsModel prosAndCons,
    FinancialsModel financials,
    @JsonKey(name: 'issuer_details') IssuerDetailsModel issuerDetails,
  });

  $ProsAndConsModelCopyWith<$Res> get prosAndCons;
  $FinancialsModelCopyWith<$Res> get financials;
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class _$BondDetailModelCopyWithImpl<$Res, $Val extends BondDetailModel>
    implements $BondDetailModelCopyWith<$Res> {
  _$BondDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(
      _value.copyWith(
            logo: null == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                      as String,
            companyName: null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            isin: null == isin
                ? _value.isin
                : isin // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            prosAndCons: null == prosAndCons
                ? _value.prosAndCons
                : prosAndCons // ignore: cast_nullable_to_non_nullable
                      as ProsAndConsModel,
            financials: null == financials
                ? _value.financials
                : financials // ignore: cast_nullable_to_non_nullable
                      as FinancialsModel,
            issuerDetails: null == issuerDetails
                ? _value.issuerDetails
                : issuerDetails // ignore: cast_nullable_to_non_nullable
                      as IssuerDetailsModel,
          )
          as $Val,
    );
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsModelCopyWith<$Res> get prosAndCons {
    return $ProsAndConsModelCopyWith<$Res>(_value.prosAndCons, (value) {
      return _then(_value.copyWith(prosAndCons: value) as $Val);
    });
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsModelCopyWith<$Res> get financials {
    return $FinancialsModelCopyWith<$Res>(_value.financials, (value) {
      return _then(_value.copyWith(financials: value) as $Val);
    });
  }

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsModelCopyWith<$Res>(_value.issuerDetails, (value) {
      return _then(_value.copyWith(issuerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BondDetailModelImplCopyWith<$Res>
    implements $BondDetailModelCopyWith<$Res> {
  factory _$$BondDetailModelImplCopyWith(
    _$BondDetailModelImpl value,
    $Res Function(_$BondDetailModelImpl) then,
  ) = __$$BondDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String logo,
    @JsonKey(name: 'company_name') String companyName,
    String description,
    String isin,
    String status,
    @JsonKey(name: 'pros_and_cons') ProsAndConsModel prosAndCons,
    FinancialsModel financials,
    @JsonKey(name: 'issuer_details') IssuerDetailsModel issuerDetails,
  });

  @override
  $ProsAndConsModelCopyWith<$Res> get prosAndCons;
  @override
  $FinancialsModelCopyWith<$Res> get financials;
  @override
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class __$$BondDetailModelImplCopyWithImpl<$Res>
    extends _$BondDetailModelCopyWithImpl<$Res, _$BondDetailModelImpl>
    implements _$$BondDetailModelImplCopyWith<$Res> {
  __$$BondDetailModelImplCopyWithImpl(
    _$BondDetailModelImpl _value,
    $Res Function(_$BondDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(
      _$BondDetailModelImpl(
        logo: null == logo
            ? _value.logo
            : logo // ignore: cast_nullable_to_non_nullable
                  as String,
        companyName: null == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isin: null == isin
            ? _value.isin
            : isin // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        prosAndCons: null == prosAndCons
            ? _value.prosAndCons
            : prosAndCons // ignore: cast_nullable_to_non_nullable
                  as ProsAndConsModel,
        financials: null == financials
            ? _value.financials
            : financials // ignore: cast_nullable_to_non_nullable
                  as FinancialsModel,
        issuerDetails: null == issuerDetails
            ? _value.issuerDetails
            : issuerDetails // ignore: cast_nullable_to_non_nullable
                  as IssuerDetailsModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BondDetailModelImpl implements _BondDetailModel {
  const _$BondDetailModelImpl({
    required this.logo,
    @JsonKey(name: 'company_name') required this.companyName,
    required this.description,
    required this.isin,
    required this.status,
    @JsonKey(name: 'pros_and_cons') required this.prosAndCons,
    required this.financials,
    @JsonKey(name: 'issuer_details') required this.issuerDetails,
  });

  factory _$BondDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondDetailModelImplFromJson(json);

  @override
  final String logo;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String description;
  @override
  final String isin;
  @override
  final String status;
  @override
  @JsonKey(name: 'pros_and_cons')
  final ProsAndConsModel prosAndCons;
  @override
  final FinancialsModel financials;
  @override
  @JsonKey(name: 'issuer_details')
  final IssuerDetailsModel issuerDetails;

  @override
  String toString() {
    return 'BondDetailModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondDetailModelImpl &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    logo,
    companyName,
    description,
    isin,
    status,
    prosAndCons,
    financials,
    issuerDetails,
  );

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BondDetailModelImplCopyWith<_$BondDetailModelImpl> get copyWith =>
      __$$BondDetailModelImplCopyWithImpl<_$BondDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BondDetailModelImplToJson(this);
  }
}

abstract class _BondDetailModel implements BondDetailModel {
  const factory _BondDetailModel({
    required final String logo,
    @JsonKey(name: 'company_name') required final String companyName,
    required final String description,
    required final String isin,
    required final String status,
    @JsonKey(name: 'pros_and_cons') required final ProsAndConsModel prosAndCons,
    required final FinancialsModel financials,
    @JsonKey(name: 'issuer_details')
    required final IssuerDetailsModel issuerDetails,
  }) = _$BondDetailModelImpl;

  factory _BondDetailModel.fromJson(Map<String, dynamic> json) =
      _$BondDetailModelImpl.fromJson;

  @override
  String get logo;
  @override
  @JsonKey(name: 'company_name')
  String get companyName;
  @override
  String get description;
  @override
  String get isin;
  @override
  String get status;
  @override
  @JsonKey(name: 'pros_and_cons')
  ProsAndConsModel get prosAndCons;
  @override
  FinancialsModel get financials;
  @override
  @JsonKey(name: 'issuer_details')
  IssuerDetailsModel get issuerDetails;

  /// Create a copy of BondDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BondDetailModelImplCopyWith<_$BondDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
