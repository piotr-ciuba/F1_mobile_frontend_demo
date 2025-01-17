// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circuit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Circuit _$CircuitFromJson(Map<String, dynamic> json) {
  return _Circuit.fromJson(json);
}

/// @nodoc
mixin _$Circuit {
  String? get circuitId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get circuitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Location')
  Location? get location => throw _privateConstructorUsedError;

  /// Serializes this Circuit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircuitCopyWith<Circuit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircuitCopyWith<$Res> {
  factory $CircuitCopyWith(Circuit value, $Res Function(Circuit) then) =
      _$CircuitCopyWithImpl<$Res, Circuit>;
  @useResult
  $Res call(
      {String? circuitId,
      String? url,
      String? circuitName,
      @JsonKey(name: 'Location') Location? location});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$CircuitCopyWithImpl<$Res, $Val extends Circuit>
    implements $CircuitCopyWith<$Res> {
  _$CircuitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circuitId = freezed,
    Object? url = freezed,
    Object? circuitName = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      circuitId: freezed == circuitId
          ? _value.circuitId
          : circuitId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      circuitName: freezed == circuitName
          ? _value.circuitName
          : circuitName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ) as $Val);
  }

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CircuitImplCopyWith<$Res> implements $CircuitCopyWith<$Res> {
  factory _$$CircuitImplCopyWith(
          _$CircuitImpl value, $Res Function(_$CircuitImpl) then) =
      __$$CircuitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? circuitId,
      String? url,
      String? circuitName,
      @JsonKey(name: 'Location') Location? location});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CircuitImplCopyWithImpl<$Res>
    extends _$CircuitCopyWithImpl<$Res, _$CircuitImpl>
    implements _$$CircuitImplCopyWith<$Res> {
  __$$CircuitImplCopyWithImpl(
      _$CircuitImpl _value, $Res Function(_$CircuitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circuitId = freezed,
    Object? url = freezed,
    Object? circuitName = freezed,
    Object? location = freezed,
  }) {
    return _then(_$CircuitImpl(
      circuitId: freezed == circuitId
          ? _value.circuitId
          : circuitId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      circuitName: freezed == circuitName
          ? _value.circuitName
          : circuitName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircuitImpl implements _Circuit {
  const _$CircuitImpl(
      {this.circuitId,
      this.url,
      this.circuitName,
      @JsonKey(name: 'Location') this.location});

  factory _$CircuitImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircuitImplFromJson(json);

  @override
  final String? circuitId;
  @override
  final String? url;
  @override
  final String? circuitName;
  @override
  @JsonKey(name: 'Location')
  final Location? location;

  @override
  String toString() {
    return 'Circuit(circuitId: $circuitId, url: $url, circuitName: $circuitName, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircuitImpl &&
            (identical(other.circuitId, circuitId) ||
                other.circuitId == circuitId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.circuitName, circuitName) ||
                other.circuitName == circuitName) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, circuitId, url, circuitName, location);

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircuitImplCopyWith<_$CircuitImpl> get copyWith =>
      __$$CircuitImplCopyWithImpl<_$CircuitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CircuitImplToJson(
      this,
    );
  }
}

abstract class _Circuit implements Circuit {
  const factory _Circuit(
      {final String? circuitId,
      final String? url,
      final String? circuitName,
      @JsonKey(name: 'Location') final Location? location}) = _$CircuitImpl;

  factory _Circuit.fromJson(Map<String, dynamic> json) = _$CircuitImpl.fromJson;

  @override
  String? get circuitId;
  @override
  String? get url;
  @override
  String? get circuitName;
  @override
  @JsonKey(name: 'Location')
  Location? get location;

  /// Create a copy of Circuit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircuitImplCopyWith<_$CircuitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
