// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return _Driver.fromJson(json);
}

/// @nodoc
mixin _$Driver {
  String? get driverId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get givenName => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;

  /// Serializes this Driver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverCopyWith<Driver> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverCopyWith<$Res> {
  factory $DriverCopyWith(Driver value, $Res Function(Driver) then) =
      _$DriverCopyWithImpl<$Res, Driver>;
  @useResult
  $Res call(
      {String? driverId,
      String? url,
      String? givenName,
      String? familyName,
      String? dateOfBirth,
      String? nationality});
}

/// @nodoc
class _$DriverCopyWithImpl<$Res, $Val extends Driver>
    implements $DriverCopyWith<$Res> {
  _$DriverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? url = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_value.copyWith(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverImplCopyWith<$Res> implements $DriverCopyWith<$Res> {
  factory _$$DriverImplCopyWith(
          _$DriverImpl value, $Res Function(_$DriverImpl) then) =
      __$$DriverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? driverId,
      String? url,
      String? givenName,
      String? familyName,
      String? dateOfBirth,
      String? nationality});
}

/// @nodoc
class __$$DriverImplCopyWithImpl<$Res>
    extends _$DriverCopyWithImpl<$Res, _$DriverImpl>
    implements _$$DriverImplCopyWith<$Res> {
  __$$DriverImplCopyWithImpl(
      _$DriverImpl _value, $Res Function(_$DriverImpl) _then)
      : super(_value, _then);

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driverId = freezed,
    Object? url = freezed,
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? dateOfBirth = freezed,
    Object? nationality = freezed,
  }) {
    return _then(_$DriverImpl(
      driverId: freezed == driverId
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverImpl implements _Driver {
  const _$DriverImpl(
      {this.driverId,
      this.url,
      this.givenName,
      this.familyName,
      this.dateOfBirth,
      this.nationality});

  factory _$DriverImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverImplFromJson(json);

  @override
  final String? driverId;
  @override
  final String? url;
  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final String? dateOfBirth;
  @override
  final String? nationality;

  @override
  String toString() {
    return 'Driver(driverId: $driverId, url: $url, givenName: $givenName, familyName: $familyName, dateOfBirth: $dateOfBirth, nationality: $nationality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, driverId, url, givenName,
      familyName, dateOfBirth, nationality);

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      __$$DriverImplCopyWithImpl<_$DriverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverImplToJson(
      this,
    );
  }
}

abstract class _Driver implements Driver {
  const factory _Driver(
      {final String? driverId,
      final String? url,
      final String? givenName,
      final String? familyName,
      final String? dateOfBirth,
      final String? nationality}) = _$DriverImpl;

  factory _Driver.fromJson(Map<String, dynamic> json) = _$DriverImpl.fromJson;

  @override
  String? get driverId;
  @override
  String? get url;
  @override
  String? get givenName;
  @override
  String? get familyName;
  @override
  String? get dateOfBirth;
  @override
  String? get nationality;

  /// Create a copy of Driver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverImplCopyWith<_$DriverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
