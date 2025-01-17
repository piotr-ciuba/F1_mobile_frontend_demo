// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constructor_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConstructorTable _$ConstructorTableFromJson(Map<String, dynamic> json) {
  return _ConstructorTable.fromJson(json);
}

/// @nodoc
mixin _$ConstructorTable {
  @JsonKey(name: 'Constructors')
  List<Constructor>? get constructors => throw _privateConstructorUsedError;

  /// Serializes this ConstructorTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConstructorTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConstructorTableCopyWith<ConstructorTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstructorTableCopyWith<$Res> {
  factory $ConstructorTableCopyWith(
          ConstructorTable value, $Res Function(ConstructorTable) then) =
      _$ConstructorTableCopyWithImpl<$Res, ConstructorTable>;
  @useResult
  $Res call({@JsonKey(name: 'Constructors') List<Constructor>? constructors});
}

/// @nodoc
class _$ConstructorTableCopyWithImpl<$Res, $Val extends ConstructorTable>
    implements $ConstructorTableCopyWith<$Res> {
  _$ConstructorTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConstructorTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constructors = freezed,
  }) {
    return _then(_value.copyWith(
      constructors: freezed == constructors
          ? _value.constructors
          : constructors // ignore: cast_nullable_to_non_nullable
              as List<Constructor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConstructorTableImplCopyWith<$Res>
    implements $ConstructorTableCopyWith<$Res> {
  factory _$$ConstructorTableImplCopyWith(_$ConstructorTableImpl value,
          $Res Function(_$ConstructorTableImpl) then) =
      __$$ConstructorTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'Constructors') List<Constructor>? constructors});
}

/// @nodoc
class __$$ConstructorTableImplCopyWithImpl<$Res>
    extends _$ConstructorTableCopyWithImpl<$Res, _$ConstructorTableImpl>
    implements _$$ConstructorTableImplCopyWith<$Res> {
  __$$ConstructorTableImplCopyWithImpl(_$ConstructorTableImpl _value,
      $Res Function(_$ConstructorTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConstructorTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? constructors = freezed,
  }) {
    return _then(_$ConstructorTableImpl(
      constructors: freezed == constructors
          ? _value._constructors
          : constructors // ignore: cast_nullable_to_non_nullable
              as List<Constructor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConstructorTableImpl implements _ConstructorTable {
  _$ConstructorTableImpl(
      {@JsonKey(name: 'Constructors') final List<Constructor>? constructors})
      : _constructors = constructors;

  factory _$ConstructorTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConstructorTableImplFromJson(json);

  final List<Constructor>? _constructors;
  @override
  @JsonKey(name: 'Constructors')
  List<Constructor>? get constructors {
    final value = _constructors;
    if (value == null) return null;
    if (_constructors is EqualUnmodifiableListView) return _constructors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConstructorTable(constructors: $constructors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConstructorTableImpl &&
            const DeepCollectionEquality()
                .equals(other._constructors, _constructors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_constructors));

  /// Create a copy of ConstructorTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConstructorTableImplCopyWith<_$ConstructorTableImpl> get copyWith =>
      __$$ConstructorTableImplCopyWithImpl<_$ConstructorTableImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConstructorTableImplToJson(
      this,
    );
  }
}

abstract class _ConstructorTable implements ConstructorTable {
  factory _ConstructorTable(
      {@JsonKey(name: 'Constructors')
      final List<Constructor>? constructors}) = _$ConstructorTableImpl;

  factory _ConstructorTable.fromJson(Map<String, dynamic> json) =
      _$ConstructorTableImpl.fromJson;

  @override
  @JsonKey(name: 'Constructors')
  List<Constructor>? get constructors;

  /// Create a copy of ConstructorTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConstructorTableImplCopyWith<_$ConstructorTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
