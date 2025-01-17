// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'race_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RaceTable _$RaceTableFromJson(Map<String, dynamic> json) {
  return _RaceTable.fromJson(json);
}

/// @nodoc
mixin _$RaceTable {
  @JsonKey(name: 'Races')
  List<Race>? get races => throw _privateConstructorUsedError;

  /// Serializes this RaceTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RaceTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RaceTableCopyWith<RaceTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaceTableCopyWith<$Res> {
  factory $RaceTableCopyWith(RaceTable value, $Res Function(RaceTable) then) =
      _$RaceTableCopyWithImpl<$Res, RaceTable>;
  @useResult
  $Res call({@JsonKey(name: 'Races') List<Race>? races});
}

/// @nodoc
class _$RaceTableCopyWithImpl<$Res, $Val extends RaceTable>
    implements $RaceTableCopyWith<$Res> {
  _$RaceTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RaceTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = freezed,
  }) {
    return _then(_value.copyWith(
      races: freezed == races
          ? _value.races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RaceTableImplCopyWith<$Res>
    implements $RaceTableCopyWith<$Res> {
  factory _$$RaceTableImplCopyWith(
          _$RaceTableImpl value, $Res Function(_$RaceTableImpl) then) =
      __$$RaceTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Races') List<Race>? races});
}

/// @nodoc
class __$$RaceTableImplCopyWithImpl<$Res>
    extends _$RaceTableCopyWithImpl<$Res, _$RaceTableImpl>
    implements _$$RaceTableImplCopyWith<$Res> {
  __$$RaceTableImplCopyWithImpl(
      _$RaceTableImpl _value, $Res Function(_$RaceTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RaceTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? races = freezed,
  }) {
    return _then(_$RaceTableImpl(
      races: freezed == races
          ? _value._races
          : races // ignore: cast_nullable_to_non_nullable
              as List<Race>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RaceTableImpl implements _RaceTable {
  _$RaceTableImpl({@JsonKey(name: 'Races') final List<Race>? races})
      : _races = races;

  factory _$RaceTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$RaceTableImplFromJson(json);

  final List<Race>? _races;
  @override
  @JsonKey(name: 'Races')
  List<Race>? get races {
    final value = _races;
    if (value == null) return null;
    if (_races is EqualUnmodifiableListView) return _races;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RaceTable(races: $races)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceTableImpl &&
            const DeepCollectionEquality().equals(other._races, _races));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_races));

  /// Create a copy of RaceTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceTableImplCopyWith<_$RaceTableImpl> get copyWith =>
      __$$RaceTableImplCopyWithImpl<_$RaceTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RaceTableImplToJson(
      this,
    );
  }
}

abstract class _RaceTable implements RaceTable {
  factory _RaceTable({@JsonKey(name: 'Races') final List<Race>? races}) =
      _$RaceTableImpl;

  factory _RaceTable.fromJson(Map<String, dynamic> json) =
      _$RaceTableImpl.fromJson;

  @override
  @JsonKey(name: 'Races')
  List<Race>? get races;

  /// Create a copy of RaceTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaceTableImplCopyWith<_$RaceTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
