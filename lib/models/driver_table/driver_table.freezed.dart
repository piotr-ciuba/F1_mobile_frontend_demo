// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DriverTable _$DriverTableFromJson(Map<String, dynamic> json) {
  return _DriverTable.fromJson(json);
}

/// @nodoc
mixin _$DriverTable {
  @JsonKey(name: 'Drivers')
  List<Driver>? get drivers => throw _privateConstructorUsedError;

  /// Serializes this DriverTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverTableCopyWith<DriverTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverTableCopyWith<$Res> {
  factory $DriverTableCopyWith(
          DriverTable value, $Res Function(DriverTable) then) =
      _$DriverTableCopyWithImpl<$Res, DriverTable>;
  @useResult
  $Res call({@JsonKey(name: 'Drivers') List<Driver>? drivers});
}

/// @nodoc
class _$DriverTableCopyWithImpl<$Res, $Val extends DriverTable>
    implements $DriverTableCopyWith<$Res> {
  _$DriverTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drivers = freezed,
  }) {
    return _then(_value.copyWith(
      drivers: freezed == drivers
          ? _value.drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DriverTableImplCopyWith<$Res>
    implements $DriverTableCopyWith<$Res> {
  factory _$$DriverTableImplCopyWith(
          _$DriverTableImpl value, $Res Function(_$DriverTableImpl) then) =
      __$$DriverTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Drivers') List<Driver>? drivers});
}

/// @nodoc
class __$$DriverTableImplCopyWithImpl<$Res>
    extends _$DriverTableCopyWithImpl<$Res, _$DriverTableImpl>
    implements _$$DriverTableImplCopyWith<$Res> {
  __$$DriverTableImplCopyWithImpl(
      _$DriverTableImpl _value, $Res Function(_$DriverTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of DriverTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drivers = freezed,
  }) {
    return _then(_$DriverTableImpl(
      drivers: freezed == drivers
          ? _value._drivers
          : drivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverTableImpl implements _DriverTable {
  _$DriverTableImpl({@JsonKey(name: 'Drivers') final List<Driver>? drivers})
      : _drivers = drivers;

  factory _$DriverTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverTableImplFromJson(json);

  final List<Driver>? _drivers;
  @override
  @JsonKey(name: 'Drivers')
  List<Driver>? get drivers {
    final value = _drivers;
    if (value == null) return null;
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DriverTable(drivers: $drivers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverTableImpl &&
            const DeepCollectionEquality().equals(other._drivers, _drivers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drivers));

  /// Create a copy of DriverTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverTableImplCopyWith<_$DriverTableImpl> get copyWith =>
      __$$DriverTableImplCopyWithImpl<_$DriverTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverTableImplToJson(
      this,
    );
  }
}

abstract class _DriverTable implements DriverTable {
  factory _DriverTable(
          {@JsonKey(name: 'Drivers') final List<Driver>? drivers}) =
      _$DriverTableImpl;

  factory _DriverTable.fromJson(Map<String, dynamic> json) =
      _$DriverTableImpl.fromJson;

  @override
  @JsonKey(name: 'Drivers')
  List<Driver>? get drivers;

  /// Create a copy of DriverTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverTableImplCopyWith<_$DriverTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
