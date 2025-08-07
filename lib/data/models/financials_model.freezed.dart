// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financials_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FinancialsModel _$FinancialsModelFromJson(Map<String, dynamic> json) {
  return _FinancialsModel.fromJson(json);
}

/// @nodoc
mixin _$FinancialsModel {
  List<MonthlyDataModel> get ebitda => throw _privateConstructorUsedError;
  List<MonthlyDataModel> get revenue => throw _privateConstructorUsedError;

  /// Serializes this FinancialsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinancialsModelCopyWith<FinancialsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialsModelCopyWith<$Res> {
  factory $FinancialsModelCopyWith(
    FinancialsModel value,
    $Res Function(FinancialsModel) then,
  ) = _$FinancialsModelCopyWithImpl<$Res, FinancialsModel>;
  @useResult
  $Res call({List<MonthlyDataModel> ebitda, List<MonthlyDataModel> revenue});
}

/// @nodoc
class _$FinancialsModelCopyWithImpl<$Res, $Val extends FinancialsModel>
    implements $FinancialsModelCopyWith<$Res> {
  _$FinancialsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ebitda = null, Object? revenue = null}) {
    return _then(
      _value.copyWith(
            ebitda: null == ebitda
                ? _value.ebitda
                : ebitda // ignore: cast_nullable_to_non_nullable
                      as List<MonthlyDataModel>,
            revenue: null == revenue
                ? _value.revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                      as List<MonthlyDataModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FinancialsModelImplCopyWith<$Res>
    implements $FinancialsModelCopyWith<$Res> {
  factory _$$FinancialsModelImplCopyWith(
    _$FinancialsModelImpl value,
    $Res Function(_$FinancialsModelImpl) then,
  ) = __$$FinancialsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MonthlyDataModel> ebitda, List<MonthlyDataModel> revenue});
}

/// @nodoc
class __$$FinancialsModelImplCopyWithImpl<$Res>
    extends _$FinancialsModelCopyWithImpl<$Res, _$FinancialsModelImpl>
    implements _$$FinancialsModelImplCopyWith<$Res> {
  __$$FinancialsModelImplCopyWithImpl(
    _$FinancialsModelImpl _value,
    $Res Function(_$FinancialsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ebitda = null, Object? revenue = null}) {
    return _then(
      _$FinancialsModelImpl(
        ebitda: null == ebitda
            ? _value._ebitda
            : ebitda // ignore: cast_nullable_to_non_nullable
                  as List<MonthlyDataModel>,
        revenue: null == revenue
            ? _value._revenue
            : revenue // ignore: cast_nullable_to_non_nullable
                  as List<MonthlyDataModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialsModelImpl implements _FinancialsModel {
  const _$FinancialsModelImpl({
    required final List<MonthlyDataModel> ebitda,
    required final List<MonthlyDataModel> revenue,
  }) : _ebitda = ebitda,
       _revenue = revenue;

  factory _$FinancialsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialsModelImplFromJson(json);

  final List<MonthlyDataModel> _ebitda;
  @override
  List<MonthlyDataModel> get ebitda {
    if (_ebitda is EqualUnmodifiableListView) return _ebitda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ebitda);
  }

  final List<MonthlyDataModel> _revenue;
  @override
  List<MonthlyDataModel> get revenue {
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenue);
  }

  @override
  String toString() {
    return 'FinancialsModel(ebitda: $ebitda, revenue: $revenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialsModelImpl &&
            const DeepCollectionEquality().equals(other._ebitda, _ebitda) &&
            const DeepCollectionEquality().equals(other._revenue, _revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_ebitda),
    const DeepCollectionEquality().hash(_revenue),
  );

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialsModelImplCopyWith<_$FinancialsModelImpl> get copyWith =>
      __$$FinancialsModelImplCopyWithImpl<_$FinancialsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialsModelImplToJson(this);
  }
}

abstract class _FinancialsModel implements FinancialsModel {
  const factory _FinancialsModel({
    required final List<MonthlyDataModel> ebitda,
    required final List<MonthlyDataModel> revenue,
  }) = _$FinancialsModelImpl;

  factory _FinancialsModel.fromJson(Map<String, dynamic> json) =
      _$FinancialsModelImpl.fromJson;

  @override
  List<MonthlyDataModel> get ebitda;
  @override
  List<MonthlyDataModel> get revenue;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinancialsModelImplCopyWith<_$FinancialsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
