// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monthly_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MonthlyDataModel _$MonthlyDataModelFromJson(Map<String, dynamic> json) {
  return _MonthlyDataModel.fromJson(json);
}

/// @nodoc
mixin _$MonthlyDataModel {
  String get month => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  /// Serializes this MonthlyDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyDataModelCopyWith<MonthlyDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyDataModelCopyWith<$Res> {
  factory $MonthlyDataModelCopyWith(
    MonthlyDataModel value,
    $Res Function(MonthlyDataModel) then,
  ) = _$MonthlyDataModelCopyWithImpl<$Res, MonthlyDataModel>;
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class _$MonthlyDataModelCopyWithImpl<$Res, $Val extends MonthlyDataModel>
    implements $MonthlyDataModelCopyWith<$Res> {
  _$MonthlyDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            month: null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthlyDataModelImplCopyWith<$Res>
    implements $MonthlyDataModelCopyWith<$Res> {
  factory _$$MonthlyDataModelImplCopyWith(
    _$MonthlyDataModelImpl value,
    $Res Function(_$MonthlyDataModelImpl) then,
  ) = __$$MonthlyDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class __$$MonthlyDataModelImplCopyWithImpl<$Res>
    extends _$MonthlyDataModelCopyWithImpl<$Res, _$MonthlyDataModelImpl>
    implements _$$MonthlyDataModelImplCopyWith<$Res> {
  __$$MonthlyDataModelImplCopyWithImpl(
    _$MonthlyDataModelImpl _value,
    $Res Function(_$MonthlyDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? month = null, Object? value = null}) {
    return _then(
      _$MonthlyDataModelImpl(
        month: null == month
            ? _value.month
            : month // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyDataModelImpl implements _MonthlyDataModel {
  const _$MonthlyDataModelImpl({required this.month, required this.value});

  factory _$MonthlyDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyDataModelImplFromJson(json);

  @override
  final String month;
  @override
  final int value;

  @override
  String toString() {
    return 'MonthlyDataModel(month: $month, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyDataModelImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyDataModelImplCopyWith<_$MonthlyDataModelImpl> get copyWith =>
      __$$MonthlyDataModelImplCopyWithImpl<_$MonthlyDataModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyDataModelImplToJson(this);
  }
}

abstract class _MonthlyDataModel implements MonthlyDataModel {
  const factory _MonthlyDataModel({
    required final String month,
    required final int value,
  }) = _$MonthlyDataModelImpl;

  factory _MonthlyDataModel.fromJson(Map<String, dynamic> json) =
      _$MonthlyDataModelImpl.fromJson;

  @override
  String get month;
  @override
  int get value;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyDataModelImplCopyWith<_$MonthlyDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
