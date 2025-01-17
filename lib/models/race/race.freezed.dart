// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'race.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Race _$RaceFromJson(Map<String, dynamic> json) {
  return _Race.fromJson(json);
}

/// @nodoc
mixin _$Race {
  String? get season => throw _privateConstructorUsedError;
  String? get round => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get raceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'Circuit')
  Circuit? get circuit => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this Race to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RaceCopyWith<Race> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaceCopyWith<$Res> {
  factory $RaceCopyWith(Race value, $Res Function(Race) then) =
      _$RaceCopyWithImpl<$Res, Race>;
  @useResult
  $Res call(
      {String? season,
      String? round,
      String? url,
      String? raceName,
      @JsonKey(name: 'Circuit') Circuit? circuit,
      String? date});

  $CircuitCopyWith<$Res>? get circuit;
}

/// @nodoc
class _$RaceCopyWithImpl<$Res, $Val extends Race>
    implements $RaceCopyWith<$Res> {
  _$RaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = freezed,
    Object? round = freezed,
    Object? url = freezed,
    Object? raceName = freezed,
    Object? circuit = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      raceName: freezed == raceName
          ? _value.raceName
          : raceName // ignore: cast_nullable_to_non_nullable
              as String?,
      circuit: freezed == circuit
          ? _value.circuit
          : circuit // ignore: cast_nullable_to_non_nullable
              as Circuit?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CircuitCopyWith<$Res>? get circuit {
    if (_value.circuit == null) {
      return null;
    }

    return $CircuitCopyWith<$Res>(_value.circuit!, (value) {
      return _then(_value.copyWith(circuit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RaceImplCopyWith<$Res> implements $RaceCopyWith<$Res> {
  factory _$$RaceImplCopyWith(
          _$RaceImpl value, $Res Function(_$RaceImpl) then) =
      __$$RaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? season,
      String? round,
      String? url,
      String? raceName,
      @JsonKey(name: 'Circuit') Circuit? circuit,
      String? date});

  @override
  $CircuitCopyWith<$Res>? get circuit;
}

/// @nodoc
class __$$RaceImplCopyWithImpl<$Res>
    extends _$RaceCopyWithImpl<$Res, _$RaceImpl>
    implements _$$RaceImplCopyWith<$Res> {
  __$$RaceImplCopyWithImpl(_$RaceImpl _value, $Res Function(_$RaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = freezed,
    Object? round = freezed,
    Object? url = freezed,
    Object? raceName = freezed,
    Object? circuit = freezed,
    Object? date = freezed,
  }) {
    return _then(_$RaceImpl(
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      raceName: freezed == raceName
          ? _value.raceName
          : raceName // ignore: cast_nullable_to_non_nullable
              as String?,
      circuit: freezed == circuit
          ? _value.circuit
          : circuit // ignore: cast_nullable_to_non_nullable
              as Circuit?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RaceImpl implements _Race {
  const _$RaceImpl(
      {this.season,
      this.round,
      this.url,
      this.raceName,
      @JsonKey(name: 'Circuit') this.circuit,
      this.date});

  factory _$RaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$RaceImplFromJson(json);

  @override
  final String? season;
  @override
  final String? round;
  @override
  final String? url;
  @override
  final String? raceName;
  @override
  @JsonKey(name: 'Circuit')
  final Circuit? circuit;
  @override
  final String? date;

  @override
  String toString() {
    return 'Race(season: $season, round: $round, url: $url, raceName: $raceName, circuit: $circuit, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RaceImpl &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.round, round) || other.round == round) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.raceName, raceName) ||
                other.raceName == raceName) &&
            (identical(other.circuit, circuit) || other.circuit == circuit) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, season, round, url, raceName, circuit, date);

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RaceImplCopyWith<_$RaceImpl> get copyWith =>
      __$$RaceImplCopyWithImpl<_$RaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RaceImplToJson(
      this,
    );
  }
}

abstract class _Race implements Race {
  const factory _Race(
      {final String? season,
      final String? round,
      final String? url,
      final String? raceName,
      @JsonKey(name: 'Circuit') final Circuit? circuit,
      final String? date}) = _$RaceImpl;

  factory _Race.fromJson(Map<String, dynamic> json) = _$RaceImpl.fromJson;

  @override
  String? get season;
  @override
  String? get round;
  @override
  String? get url;
  @override
  String? get raceName;
  @override
  @JsonKey(name: 'Circuit')
  Circuit? get circuit;
  @override
  String? get date;

  /// Create a copy of Race
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RaceImplCopyWith<_$RaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
