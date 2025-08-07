// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BondListResponse _$BondListResponseFromJson(Map<String, dynamic> json) {
  return _BondListResponse.fromJson(json);
}

/// @nodoc
mixin _$BondListResponse {
  List<Bond> get data => throw _privateConstructorUsedError;

  /// Serializes this BondListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BondListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BondListResponseCopyWith<BondListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BondListResponseCopyWith<$Res> {
  factory $BondListResponseCopyWith(
    BondListResponse value,
    $Res Function(BondListResponse) then,
  ) = _$BondListResponseCopyWithImpl<$Res, BondListResponse>;
  @useResult
  $Res call({List<Bond> data});
}

/// @nodoc
class _$BondListResponseCopyWithImpl<$Res, $Val extends BondListResponse>
    implements $BondListResponseCopyWith<$Res> {
  _$BondListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BondListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<Bond>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BondListResponseImplCopyWith<$Res>
    implements $BondListResponseCopyWith<$Res> {
  factory _$$BondListResponseImplCopyWith(
    _$BondListResponseImpl value,
    $Res Function(_$BondListResponseImpl) then,
  ) = __$$BondListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bond> data});
}

/// @nodoc
class __$$BondListResponseImplCopyWithImpl<$Res>
    extends _$BondListResponseCopyWithImpl<$Res, _$BondListResponseImpl>
    implements _$$BondListResponseImplCopyWith<$Res> {
  __$$BondListResponseImplCopyWithImpl(
    _$BondListResponseImpl _value,
    $Res Function(_$BondListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BondListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$BondListResponseImpl(
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<Bond>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BondListResponseImpl implements _BondListResponse {
  const _$BondListResponseImpl({required final List<Bond> data}) : _data = data;

  factory _$BondListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BondListResponseImplFromJson(json);

  final List<Bond> _data;
  @override
  List<Bond> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BondListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BondListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BondListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BondListResponseImplCopyWith<_$BondListResponseImpl> get copyWith =>
      __$$BondListResponseImplCopyWithImpl<_$BondListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BondListResponseImplToJson(this);
  }
}

abstract class _BondListResponse implements BondListResponse {
  const factory _BondListResponse({required final List<Bond> data}) =
      _$BondListResponseImpl;

  factory _BondListResponse.fromJson(Map<String, dynamic> json) =
      _$BondListResponseImpl.fromJson;

  @override
  List<Bond> get data;

  /// Create a copy of BondListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BondListResponseImplCopyWith<_$BondListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
