// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mr_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MrData _$MrDataFromJson(Map<String, dynamic> json) {
  return _MrData.fromJson(json);
}

/// @nodoc
mixin _$MrData {
  String? get xmlns => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get limit => throw _privateConstructorUsedError;
  String? get offset => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'RaceTable')
  RaceTable? get raceTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'DriverTable')
  DriverTable? get driverTable => throw _privateConstructorUsedError;

  /// Serializes this MrData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MrDataCopyWith<MrData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MrDataCopyWith<$Res> {
  factory $MrDataCopyWith(MrData value, $Res Function(MrData) then) =
      _$MrDataCopyWithImpl<$Res, MrData>;
  @useResult
  $Res call(
      {String? xmlns,
      String? series,
      String? url,
      String? limit,
      String? offset,
      String? total,
      @JsonKey(name: 'RaceTable') RaceTable? raceTable,
      @JsonKey(name: 'DriverTable') DriverTable? driverTable});

  $RaceTableCopyWith<$Res>? get raceTable;
  $DriverTableCopyWith<$Res>? get driverTable;
}

/// @nodoc
class _$MrDataCopyWithImpl<$Res, $Val extends MrData>
    implements $MrDataCopyWith<$Res> {
  _$MrDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlns = freezed,
    Object? series = freezed,
    Object? url = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? total = freezed,
    Object? raceTable = freezed,
    Object? driverTable = freezed,
  }) {
    return _then(_value.copyWith(
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      raceTable: freezed == raceTable
          ? _value.raceTable
          : raceTable // ignore: cast_nullable_to_non_nullable
              as RaceTable?,
      driverTable: freezed == driverTable
          ? _value.driverTable
          : driverTable // ignore: cast_nullable_to_non_nullable
              as DriverTable?,
    ) as $Val);
  }

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RaceTableCopyWith<$Res>? get raceTable {
    if (_value.raceTable == null) {
      return null;
    }

    return $RaceTableCopyWith<$Res>(_value.raceTable!, (value) {
      return _then(_value.copyWith(raceTable: value) as $Val);
    });
  }

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverTableCopyWith<$Res>? get driverTable {
    if (_value.driverTable == null) {
      return null;
    }

    return $DriverTableCopyWith<$Res>(_value.driverTable!, (value) {
      return _then(_value.copyWith(driverTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MrDataImplCopyWith<$Res> implements $MrDataCopyWith<$Res> {
  factory _$$MrDataImplCopyWith(
          _$MrDataImpl value, $Res Function(_$MrDataImpl) then) =
      __$$MrDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? xmlns,
      String? series,
      String? url,
      String? limit,
      String? offset,
      String? total,
      @JsonKey(name: 'RaceTable') RaceTable? raceTable,
      @JsonKey(name: 'DriverTable') DriverTable? driverTable});

  @override
  $RaceTableCopyWith<$Res>? get raceTable;
  @override
  $DriverTableCopyWith<$Res>? get driverTable;
}

/// @nodoc
class __$$MrDataImplCopyWithImpl<$Res>
    extends _$MrDataCopyWithImpl<$Res, _$MrDataImpl>
    implements _$$MrDataImplCopyWith<$Res> {
  __$$MrDataImplCopyWithImpl(
      _$MrDataImpl _value, $Res Function(_$MrDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xmlns = freezed,
    Object? series = freezed,
    Object? url = freezed,
    Object? limit = freezed,
    Object? offset = freezed,
    Object? total = freezed,
    Object? raceTable = freezed,
    Object? driverTable = freezed,
  }) {
    return _then(_$MrDataImpl(
      xmlns: freezed == xmlns
          ? _value.xmlns
          : xmlns // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
      raceTable: freezed == raceTable
          ? _value.raceTable
          : raceTable // ignore: cast_nullable_to_non_nullable
              as RaceTable?,
      driverTable: freezed == driverTable
          ? _value.driverTable
          : driverTable // ignore: cast_nullable_to_non_nullable
              as DriverTable?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MrDataImpl implements _MrData {
  _$MrDataImpl(
      {this.xmlns,
      this.series,
      this.url,
      this.limit,
      this.offset,
      this.total,
      @JsonKey(name: 'RaceTable') this.raceTable,
      @JsonKey(name: 'DriverTable') this.driverTable});

  factory _$MrDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MrDataImplFromJson(json);

  @override
  final String? xmlns;
  @override
  final String? series;
  @override
  final String? url;
  @override
  final String? limit;
  @override
  final String? offset;
  @override
  final String? total;
  @override
  @JsonKey(name: 'RaceTable')
  final RaceTable? raceTable;
  @override
  @JsonKey(name: 'DriverTable')
  final DriverTable? driverTable;

  @override
  String toString() {
    return 'MrData(xmlns: $xmlns, series: $series, url: $url, limit: $limit, offset: $offset, total: $total, raceTable: $raceTable, driverTable: $driverTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MrDataImpl &&
            (identical(other.xmlns, xmlns) || other.xmlns == xmlns) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.raceTable, raceTable) ||
                other.raceTable == raceTable) &&
            (identical(other.driverTable, driverTable) ||
                other.driverTable == driverTable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xmlns, series, url, limit,
      offset, total, raceTable, driverTable);

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MrDataImplCopyWith<_$MrDataImpl> get copyWith =>
      __$$MrDataImplCopyWithImpl<_$MrDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MrDataImplToJson(
      this,
    );
  }
}

abstract class _MrData implements MrData {
  factory _MrData(
          {final String? xmlns,
          final String? series,
          final String? url,
          final String? limit,
          final String? offset,
          final String? total,
          @JsonKey(name: 'RaceTable') final RaceTable? raceTable,
          @JsonKey(name: 'DriverTable') final DriverTable? driverTable}) =
      _$MrDataImpl;

  factory _MrData.fromJson(Map<String, dynamic> json) = _$MrDataImpl.fromJson;

  @override
  String? get xmlns;
  @override
  String? get series;
  @override
  String? get url;
  @override
  String? get limit;
  @override
  String? get offset;
  @override
  String? get total;
  @override
  @JsonKey(name: 'RaceTable')
  RaceTable? get raceTable;
  @override
  @JsonKey(name: 'DriverTable')
  DriverTable? get driverTable;

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MrDataImplCopyWith<_$MrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
