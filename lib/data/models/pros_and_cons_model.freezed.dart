// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pros_and_cons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProsAndConsModel _$ProsAndConsModelFromJson(Map<String, dynamic> json) {
  return _ProsAndConsModel.fromJson(json);
}

/// @nodoc
mixin _$ProsAndConsModel {
  List<String> get pros => throw _privateConstructorUsedError;
  List<String> get cons => throw _privateConstructorUsedError;

  /// Serializes this ProsAndConsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProsAndConsModelCopyWith<ProsAndConsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProsAndConsModelCopyWith<$Res> {
  factory $ProsAndConsModelCopyWith(
    ProsAndConsModel value,
    $Res Function(ProsAndConsModel) then,
  ) = _$ProsAndConsModelCopyWithImpl<$Res, ProsAndConsModel>;
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class _$ProsAndConsModelCopyWithImpl<$Res, $Val extends ProsAndConsModel>
    implements $ProsAndConsModelCopyWith<$Res> {
  _$ProsAndConsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pros = null, Object? cons = null}) {
    return _then(
      _value.copyWith(
            pros: null == pros
                ? _value.pros
                : pros // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            cons: null == cons
                ? _value.cons
                : cons // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProsAndConsModelImplCopyWith<$Res>
    implements $ProsAndConsModelCopyWith<$Res> {
  factory _$$ProsAndConsModelImplCopyWith(
    _$ProsAndConsModelImpl value,
    $Res Function(_$ProsAndConsModelImpl) then,
  ) = __$$ProsAndConsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class __$$ProsAndConsModelImplCopyWithImpl<$Res>
    extends _$ProsAndConsModelCopyWithImpl<$Res, _$ProsAndConsModelImpl>
    implements _$$ProsAndConsModelImplCopyWith<$Res> {
  __$$ProsAndConsModelImplCopyWithImpl(
    _$ProsAndConsModelImpl _value,
    $Res Function(_$ProsAndConsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pros = null, Object? cons = null}) {
    return _then(
      _$ProsAndConsModelImpl(
        pros: null == pros
            ? _value._pros
            : pros // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        cons: null == cons
            ? _value._cons
            : cons // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProsAndConsModelImpl implements _ProsAndConsModel {
  const _$ProsAndConsModelImpl({
    required final List<String> pros,
    required final List<String> cons,
  }) : _pros = pros,
       _cons = cons;

  factory _$ProsAndConsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProsAndConsModelImplFromJson(json);

  final List<String> _pros;
  @override
  List<String> get pros {
    if (_pros is EqualUnmodifiableListView) return _pros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pros);
  }

  final List<String> _cons;
  @override
  List<String> get cons {
    if (_cons is EqualUnmodifiableListView) return _cons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cons);
  }

  @override
  String toString() {
    return 'ProsAndConsModel(pros: $pros, cons: $cons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProsAndConsModelImpl &&
            const DeepCollectionEquality().equals(other._pros, _pros) &&
            const DeepCollectionEquality().equals(other._cons, _cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pros),
    const DeepCollectionEquality().hash(_cons),
  );

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProsAndConsModelImplCopyWith<_$ProsAndConsModelImpl> get copyWith =>
      __$$ProsAndConsModelImplCopyWithImpl<_$ProsAndConsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProsAndConsModelImplToJson(this);
  }
}

abstract class _ProsAndConsModel implements ProsAndConsModel {
  const factory _ProsAndConsModel({
    required final List<String> pros,
    required final List<String> cons,
  }) = _$ProsAndConsModelImpl;

  factory _ProsAndConsModel.fromJson(Map<String, dynamic> json) =
      _$ProsAndConsModelImpl.fromJson;

  @override
  List<String> get pros;
  @override
  List<String> get cons;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProsAndConsModelImplCopyWith<_$ProsAndConsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
