// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get number => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get positionText => throw _privateConstructorUsedError;
  String? get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'Driver')
  Driver? get driver => throw _privateConstructorUsedError;
  @JsonKey(name: 'Constructor')
  Constructor? get constructor => throw _privateConstructorUsedError;
  String? get grid => throw _privateConstructorUsedError;
  String? get laps => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Time')
  Time? get time => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? number,
      String? position,
      String? positionText,
      String? points,
      @JsonKey(name: 'Driver') Driver? driver,
      @JsonKey(name: 'Constructor') Constructor? constructor,
      String? grid,
      String? laps,
      String? status,
      @JsonKey(name: 'Time') Time? time});

  $DriverCopyWith<$Res>? get driver;
  $ConstructorCopyWith<$Res>? get constructor;
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? position = freezed,
    Object? positionText = freezed,
    Object? points = freezed,
    Object? driver = freezed,
    Object? constructor = freezed,
    Object? grid = freezed,
    Object? laps = freezed,
    Object? status = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      positionText: freezed == positionText
          ? _value.positionText
          : positionText // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      constructor: freezed == constructor
          ? _value.constructor
          : constructor // ignore: cast_nullable_to_non_nullable
              as Constructor?,
      grid: freezed == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as String?,
      laps: freezed == laps
          ? _value.laps
          : laps // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ) as $Val);
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConstructorCopyWith<$Res>? get constructor {
    if (_value.constructor == null) {
      return null;
    }

    return $ConstructorCopyWith<$Res>(_value.constructor!, (value) {
      return _then(_value.copyWith(constructor: value) as $Val);
    });
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeCopyWith<$Res>? get time {
    if (_value.time == null) {
      return null;
    }

    return $TimeCopyWith<$Res>(_value.time!, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? number,
      String? position,
      String? positionText,
      String? points,
      @JsonKey(name: 'Driver') Driver? driver,
      @JsonKey(name: 'Constructor') Constructor? constructor,
      String? grid,
      String? laps,
      String? status,
      @JsonKey(name: 'Time') Time? time});

  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $ConstructorCopyWith<$Res>? get constructor;
  @override
  $TimeCopyWith<$Res>? get time;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? position = freezed,
    Object? positionText = freezed,
    Object? points = freezed,
    Object? driver = freezed,
    Object? constructor = freezed,
    Object? grid = freezed,
    Object? laps = freezed,
    Object? status = freezed,
    Object? time = freezed,
  }) {
    return _then(_$ResultImpl(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      positionText: freezed == positionText
          ? _value.positionText
          : positionText // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: freezed == driver
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as Driver?,
      constructor: freezed == constructor
          ? _value.constructor
          : constructor // ignore: cast_nullable_to_non_nullable
              as Constructor?,
      grid: freezed == grid
          ? _value.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as String?,
      laps: freezed == laps
          ? _value.laps
          : laps // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Time?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.number,
      this.position,
      this.positionText,
      this.points,
      @JsonKey(name: 'Driver') this.driver,
      @JsonKey(name: 'Constructor') this.constructor,
      this.grid,
      this.laps,
      this.status,
      @JsonKey(name: 'Time') this.time});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String? number;
  @override
  final String? position;
  @override
  final String? positionText;
  @override
  final String? points;
  @override
  @JsonKey(name: 'Driver')
  final Driver? driver;
  @override
  @JsonKey(name: 'Constructor')
  final Constructor? constructor;
  @override
  final String? grid;
  @override
  final String? laps;
  @override
  final String? status;
  @override
  @JsonKey(name: 'Time')
  final Time? time;

  @override
  String toString() {
    return 'Result(number: $number, position: $position, positionText: $positionText, points: $points, driver: $driver, constructor: $constructor, grid: $grid, laps: $laps, status: $status, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.positionText, positionText) ||
                other.positionText == positionText) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.constructor, constructor) ||
                other.constructor == constructor) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            (identical(other.laps, laps) || other.laps == laps) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, position, positionText,
      points, driver, constructor, grid, laps, status, time);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? number,
      final String? position,
      final String? positionText,
      final String? points,
      @JsonKey(name: 'Driver') final Driver? driver,
      @JsonKey(name: 'Constructor') final Constructor? constructor,
      final String? grid,
      final String? laps,
      final String? status,
      @JsonKey(name: 'Time') final Time? time}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String? get number;
  @override
  String? get position;
  @override
  String? get positionText;
  @override
  String? get points;
  @override
  @JsonKey(name: 'Driver')
  Driver? get driver;
  @override
  @JsonKey(name: 'Constructor')
  Constructor? get constructor;
  @override
  String? get grid;
  @override
  String? get laps;
  @override
  String? get status;
  @override
  @JsonKey(name: 'Time')
  Time? get time;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
