// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SeasonTable _$SeasonTableFromJson(Map<String, dynamic> json) {
  return _SeasonTable.fromJson(json);
}

/// @nodoc
mixin _$SeasonTable {
  @JsonKey(name: 'Seasons')
  List<Season>? get seasons => throw _privateConstructorUsedError;

  /// Serializes this SeasonTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SeasonTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonTableCopyWith<SeasonTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonTableCopyWith<$Res> {
  factory $SeasonTableCopyWith(
          SeasonTable value, $Res Function(SeasonTable) then) =
      _$SeasonTableCopyWithImpl<$Res, SeasonTable>;
  @useResult
  $Res call({@JsonKey(name: 'Seasons') List<Season>? seasons});
}

/// @nodoc
class _$SeasonTableCopyWithImpl<$Res, $Val extends SeasonTable>
    implements $SeasonTableCopyWith<$Res> {
  _$SeasonTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SeasonTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seasons = freezed,
  }) {
    return _then(_value.copyWith(
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonTableImplCopyWith<$Res>
    implements $SeasonTableCopyWith<$Res> {
  factory _$$SeasonTableImplCopyWith(
          _$SeasonTableImpl value, $Res Function(_$SeasonTableImpl) then) =
      __$$SeasonTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Seasons') List<Season>? seasons});
}

/// @nodoc
class __$$SeasonTableImplCopyWithImpl<$Res>
    extends _$SeasonTableCopyWithImpl<$Res, _$SeasonTableImpl>
    implements _$$SeasonTableImplCopyWith<$Res> {
  __$$SeasonTableImplCopyWithImpl(
      _$SeasonTableImpl _value, $Res Function(_$SeasonTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SeasonTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seasons = freezed,
  }) {
    return _then(_$SeasonTableImpl(
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonTableImpl implements _SeasonTable {
  _$SeasonTableImpl({@JsonKey(name: 'Seasons') final List<Season>? seasons})
      : _seasons = seasons;

  factory _$SeasonTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonTableImplFromJson(json);

  final List<Season>? _seasons;
  @override
  @JsonKey(name: 'Seasons')
  List<Season>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SeasonTable(seasons: $seasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonTableImpl &&
            const DeepCollectionEquality().equals(other._seasons, _seasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_seasons));

  /// Create a copy of SeasonTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonTableImplCopyWith<_$SeasonTableImpl> get copyWith =>
      __$$SeasonTableImplCopyWithImpl<_$SeasonTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonTableImplToJson(
      this,
    );
  }
}

abstract class _SeasonTable implements SeasonTable {
  factory _SeasonTable(
          {@JsonKey(name: 'Seasons') final List<Season>? seasons}) =
      _$SeasonTableImpl;

  factory _SeasonTable.fromJson(Map<String, dynamic> json) =
      _$SeasonTableImpl.fromJson;

  @override
  @JsonKey(name: 'Seasons')
  List<Season>? get seasons;

  /// Create a copy of SeasonTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonTableImplCopyWith<_$SeasonTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
