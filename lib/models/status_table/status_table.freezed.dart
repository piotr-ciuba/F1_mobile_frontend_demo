// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatusTable _$StatusTableFromJson(Map<String, dynamic> json) {
  return _StatusTable.fromJson(json);
}

/// @nodoc
mixin _$StatusTable {
  @JsonKey(name: 'Status')
  List<Status>? get status => throw _privateConstructorUsedError;

  /// Serializes this StatusTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusTableCopyWith<StatusTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusTableCopyWith<$Res> {
  factory $StatusTableCopyWith(
          StatusTable value, $Res Function(StatusTable) then) =
      _$StatusTableCopyWithImpl<$Res, StatusTable>;
  @useResult
  $Res call({@JsonKey(name: 'Status') List<Status>? status});
}

/// @nodoc
class _$StatusTableCopyWithImpl<$Res, $Val extends StatusTable>
    implements $StatusTableCopyWith<$Res> {
  _$StatusTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusTableImplCopyWith<$Res>
    implements $StatusTableCopyWith<$Res> {
  factory _$$StatusTableImplCopyWith(
          _$StatusTableImpl value, $Res Function(_$StatusTableImpl) then) =
      __$$StatusTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Status') List<Status>? status});
}

/// @nodoc
class __$$StatusTableImplCopyWithImpl<$Res>
    extends _$StatusTableCopyWithImpl<$Res, _$StatusTableImpl>
    implements _$$StatusTableImplCopyWith<$Res> {
  __$$StatusTableImplCopyWithImpl(
      _$StatusTableImpl _value, $Res Function(_$StatusTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$StatusTableImpl(
      status: freezed == status
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<Status>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusTableImpl implements _StatusTable {
  _$StatusTableImpl({@JsonKey(name: 'Status') final List<Status>? status})
      : _status = status;

  factory _$StatusTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusTableImplFromJson(json);

  final List<Status>? _status;
  @override
  @JsonKey(name: 'Status')
  List<Status>? get status {
    final value = _status;
    if (value == null) return null;
    if (_status is EqualUnmodifiableListView) return _status;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StatusTable(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusTableImpl &&
            const DeepCollectionEquality().equals(other._status, _status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_status));

  /// Create a copy of StatusTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusTableImplCopyWith<_$StatusTableImpl> get copyWith =>
      __$$StatusTableImplCopyWithImpl<_$StatusTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusTableImplToJson(
      this,
    );
  }
}

abstract class _StatusTable implements StatusTable {
  factory _StatusTable({@JsonKey(name: 'Status') final List<Status>? status}) =
      _$StatusTableImpl;

  factory _StatusTable.fromJson(Map<String, dynamic> json) =
      _$StatusTableImpl.fromJson;

  @override
  @JsonKey(name: 'Status')
  List<Status>? get status;

  /// Create a copy of StatusTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusTableImplCopyWith<_$StatusTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
