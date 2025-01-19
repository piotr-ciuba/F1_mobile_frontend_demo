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
  @JsonKey(name: 'CircuitTable')
  CircuitTable? get circuitTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConstructorTable')
  ConstructorTable? get constructorTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'SeasonTable')
  SeasonTable? get seasonTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'StatusTable')
  StatusTable? get statusTable => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'DriverTable') DriverTable? driverTable,
      @JsonKey(name: 'CircuitTable') CircuitTable? circuitTable,
      @JsonKey(name: 'ConstructorTable') ConstructorTable? constructorTable,
      @JsonKey(name: 'SeasonTable') SeasonTable? seasonTable,
      @JsonKey(name: 'StatusTable') StatusTable? statusTable});

  $RaceTableCopyWith<$Res>? get raceTable;
  $DriverTableCopyWith<$Res>? get driverTable;
  $CircuitTableCopyWith<$Res>? get circuitTable;
  $ConstructorTableCopyWith<$Res>? get constructorTable;
  $SeasonTableCopyWith<$Res>? get seasonTable;
  $StatusTableCopyWith<$Res>? get statusTable;
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
    Object? circuitTable = freezed,
    Object? constructorTable = freezed,
    Object? seasonTable = freezed,
    Object? statusTable = freezed,
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
      circuitTable: freezed == circuitTable
          ? _value.circuitTable
          : circuitTable // ignore: cast_nullable_to_non_nullable
              as CircuitTable?,
      constructorTable: freezed == constructorTable
          ? _value.constructorTable
          : constructorTable // ignore: cast_nullable_to_non_nullable
              as ConstructorTable?,
      seasonTable: freezed == seasonTable
          ? _value.seasonTable
          : seasonTable // ignore: cast_nullable_to_non_nullable
              as SeasonTable?,
      statusTable: freezed == statusTable
          ? _value.statusTable
          : statusTable // ignore: cast_nullable_to_non_nullable
              as StatusTable?,
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

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CircuitTableCopyWith<$Res>? get circuitTable {
    if (_value.circuitTable == null) {
      return null;
    }

    return $CircuitTableCopyWith<$Res>(_value.circuitTable!, (value) {
      return _then(_value.copyWith(circuitTable: value) as $Val);
    });
  }

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConstructorTableCopyWith<$Res>? get constructorTable {
    if (_value.constructorTable == null) {
      return null;
    }

    return $ConstructorTableCopyWith<$Res>(_value.constructorTable!, (value) {
      return _then(_value.copyWith(constructorTable: value) as $Val);
    });
  }

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SeasonTableCopyWith<$Res>? get seasonTable {
    if (_value.seasonTable == null) {
      return null;
    }

    return $SeasonTableCopyWith<$Res>(_value.seasonTable!, (value) {
      return _then(_value.copyWith(seasonTable: value) as $Val);
    });
  }

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusTableCopyWith<$Res>? get statusTable {
    if (_value.statusTable == null) {
      return null;
    }

    return $StatusTableCopyWith<$Res>(_value.statusTable!, (value) {
      return _then(_value.copyWith(statusTable: value) as $Val);
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
      @JsonKey(name: 'DriverTable') DriverTable? driverTable,
      @JsonKey(name: 'CircuitTable') CircuitTable? circuitTable,
      @JsonKey(name: 'ConstructorTable') ConstructorTable? constructorTable,
      @JsonKey(name: 'SeasonTable') SeasonTable? seasonTable,
      @JsonKey(name: 'StatusTable') StatusTable? statusTable});

  @override
  $RaceTableCopyWith<$Res>? get raceTable;
  @override
  $DriverTableCopyWith<$Res>? get driverTable;
  @override
  $CircuitTableCopyWith<$Res>? get circuitTable;
  @override
  $ConstructorTableCopyWith<$Res>? get constructorTable;
  @override
  $SeasonTableCopyWith<$Res>? get seasonTable;
  @override
  $StatusTableCopyWith<$Res>? get statusTable;
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
    Object? circuitTable = freezed,
    Object? constructorTable = freezed,
    Object? seasonTable = freezed,
    Object? statusTable = freezed,
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
      circuitTable: freezed == circuitTable
          ? _value.circuitTable
          : circuitTable // ignore: cast_nullable_to_non_nullable
              as CircuitTable?,
      constructorTable: freezed == constructorTable
          ? _value.constructorTable
          : constructorTable // ignore: cast_nullable_to_non_nullable
              as ConstructorTable?,
      seasonTable: freezed == seasonTable
          ? _value.seasonTable
          : seasonTable // ignore: cast_nullable_to_non_nullable
              as SeasonTable?,
      statusTable: freezed == statusTable
          ? _value.statusTable
          : statusTable // ignore: cast_nullable_to_non_nullable
              as StatusTable?,
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
      @JsonKey(name: 'DriverTable') this.driverTable,
      @JsonKey(name: 'CircuitTable') this.circuitTable,
      @JsonKey(name: 'ConstructorTable') this.constructorTable,
      @JsonKey(name: 'SeasonTable') this.seasonTable,
      @JsonKey(name: 'StatusTable') this.statusTable});

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
  @JsonKey(name: 'CircuitTable')
  final CircuitTable? circuitTable;
  @override
  @JsonKey(name: 'ConstructorTable')
  final ConstructorTable? constructorTable;
  @override
  @JsonKey(name: 'SeasonTable')
  final SeasonTable? seasonTable;
  @override
  @JsonKey(name: 'StatusTable')
  final StatusTable? statusTable;

  @override
  String toString() {
    return 'MrData(xmlns: $xmlns, series: $series, url: $url, limit: $limit, offset: $offset, total: $total, raceTable: $raceTable, driverTable: $driverTable, circuitTable: $circuitTable, constructorTable: $constructorTable, seasonTable: $seasonTable, statusTable: $statusTable)';
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
                other.driverTable == driverTable) &&
            (identical(other.circuitTable, circuitTable) ||
                other.circuitTable == circuitTable) &&
            (identical(other.constructorTable, constructorTable) ||
                other.constructorTable == constructorTable) &&
            (identical(other.seasonTable, seasonTable) ||
                other.seasonTable == seasonTable) &&
            (identical(other.statusTable, statusTable) ||
                other.statusTable == statusTable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      xmlns,
      series,
      url,
      limit,
      offset,
      total,
      raceTable,
      driverTable,
      circuitTable,
      constructorTable,
      seasonTable,
      statusTable);

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
          @JsonKey(name: 'DriverTable') final DriverTable? driverTable,
          @JsonKey(name: 'CircuitTable') final CircuitTable? circuitTable,
          @JsonKey(name: 'ConstructorTable')
          final ConstructorTable? constructorTable,
          @JsonKey(name: 'SeasonTable') final SeasonTable? seasonTable,
          @JsonKey(name: 'StatusTable') final StatusTable? statusTable}) =
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
  @override
  @JsonKey(name: 'CircuitTable')
  CircuitTable? get circuitTable;
  @override
  @JsonKey(name: 'ConstructorTable')
  ConstructorTable? get constructorTable;
  @override
  @JsonKey(name: 'SeasonTable')
  SeasonTable? get seasonTable;
  @override
  @JsonKey(name: 'StatusTable')
  StatusTable? get statusTable;

  /// Create a copy of MrData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MrDataImplCopyWith<_$MrDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
