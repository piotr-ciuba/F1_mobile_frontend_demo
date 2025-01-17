// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'circuit_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CircuitTable _$CircuitTableFromJson(Map<String, dynamic> json) {
  return _CircuitTable.fromJson(json);
}

/// @nodoc
mixin _$CircuitTable {
  @JsonKey(name: 'Circuits')
  List<Circuit>? get circuits => throw _privateConstructorUsedError;

  /// Serializes this CircuitTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CircuitTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CircuitTableCopyWith<CircuitTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CircuitTableCopyWith<$Res> {
  factory $CircuitTableCopyWith(
          CircuitTable value, $Res Function(CircuitTable) then) =
      _$CircuitTableCopyWithImpl<$Res, CircuitTable>;
  @useResult
  $Res call({@JsonKey(name: 'Circuits') List<Circuit>? circuits});
}

/// @nodoc
class _$CircuitTableCopyWithImpl<$Res, $Val extends CircuitTable>
    implements $CircuitTableCopyWith<$Res> {
  _$CircuitTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CircuitTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circuits = freezed,
  }) {
    return _then(_value.copyWith(
      circuits: freezed == circuits
          ? _value.circuits
          : circuits // ignore: cast_nullable_to_non_nullable
              as List<Circuit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CircuitTableImplCopyWith<$Res>
    implements $CircuitTableCopyWith<$Res> {
  factory _$$CircuitTableImplCopyWith(
          _$CircuitTableImpl value, $Res Function(_$CircuitTableImpl) then) =
      __$$CircuitTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Circuits') List<Circuit>? circuits});
}

/// @nodoc
class __$$CircuitTableImplCopyWithImpl<$Res>
    extends _$CircuitTableCopyWithImpl<$Res, _$CircuitTableImpl>
    implements _$$CircuitTableImplCopyWith<$Res> {
  __$$CircuitTableImplCopyWithImpl(
      _$CircuitTableImpl _value, $Res Function(_$CircuitTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of CircuitTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? circuits = freezed,
  }) {
    return _then(_$CircuitTableImpl(
      circuits: freezed == circuits
          ? _value._circuits
          : circuits // ignore: cast_nullable_to_non_nullable
              as List<Circuit>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CircuitTableImpl implements _CircuitTable {
  _$CircuitTableImpl({@JsonKey(name: 'Circuits') final List<Circuit>? circuits})
      : _circuits = circuits;

  factory _$CircuitTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$CircuitTableImplFromJson(json);

  final List<Circuit>? _circuits;
  @override
  @JsonKey(name: 'Circuits')
  List<Circuit>? get circuits {
    final value = _circuits;
    if (value == null) return null;
    if (_circuits is EqualUnmodifiableListView) return _circuits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CircuitTable(circuits: $circuits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CircuitTableImpl &&
            const DeepCollectionEquality().equals(other._circuits, _circuits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_circuits));

  /// Create a copy of CircuitTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CircuitTableImplCopyWith<_$CircuitTableImpl> get copyWith =>
      __$$CircuitTableImplCopyWithImpl<_$CircuitTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CircuitTableImplToJson(
      this,
    );
  }
}

abstract class _CircuitTable implements CircuitTable {
  factory _CircuitTable(
          {@JsonKey(name: 'Circuits') final List<Circuit>? circuits}) =
      _$CircuitTableImpl;

  factory _CircuitTable.fromJson(Map<String, dynamic> json) =
      _$CircuitTableImpl.fromJson;

  @override
  @JsonKey(name: 'Circuits')
  List<Circuit>? get circuits;

  /// Create a copy of CircuitTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CircuitTableImplCopyWith<_$CircuitTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
