// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'f1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

F1 _$F1FromJson(Map<String, dynamic> json) {
  return _F1.fromJson(json);
}

/// @nodoc
mixin _$F1 {
  @JsonKey(name: 'MRData')
  MrData? get mrData => throw _privateConstructorUsedError;

  /// Serializes this F1 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $F1CopyWith<F1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $F1CopyWith<$Res> {
  factory $F1CopyWith(F1 value, $Res Function(F1) then) =
      _$F1CopyWithImpl<$Res, F1>;
  @useResult
  $Res call({@JsonKey(name: 'MRData') MrData? mrData});

  $MrDataCopyWith<$Res>? get mrData;
}

/// @nodoc
class _$F1CopyWithImpl<$Res, $Val extends F1> implements $F1CopyWith<$Res> {
  _$F1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mrData = freezed,
  }) {
    return _then(_value.copyWith(
      mrData: freezed == mrData
          ? _value.mrData
          : mrData // ignore: cast_nullable_to_non_nullable
              as MrData?,
    ) as $Val);
  }

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MrDataCopyWith<$Res>? get mrData {
    if (_value.mrData == null) {
      return null;
    }

    return $MrDataCopyWith<$Res>(_value.mrData!, (value) {
      return _then(_value.copyWith(mrData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$F1ImplCopyWith<$Res> implements $F1CopyWith<$Res> {
  factory _$$F1ImplCopyWith(_$F1Impl value, $Res Function(_$F1Impl) then) =
      __$$F1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'MRData') MrData? mrData});

  @override
  $MrDataCopyWith<$Res>? get mrData;
}

/// @nodoc
class __$$F1ImplCopyWithImpl<$Res> extends _$F1CopyWithImpl<$Res, _$F1Impl>
    implements _$$F1ImplCopyWith<$Res> {
  __$$F1ImplCopyWithImpl(_$F1Impl _value, $Res Function(_$F1Impl) _then)
      : super(_value, _then);

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mrData = freezed,
  }) {
    return _then(_$F1Impl(
      mrData: freezed == mrData
          ? _value.mrData
          : mrData // ignore: cast_nullable_to_non_nullable
              as MrData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$F1Impl implements _F1 {
  _$F1Impl({@JsonKey(name: 'MRData') this.mrData});

  factory _$F1Impl.fromJson(Map<String, dynamic> json) =>
      _$$F1ImplFromJson(json);

  @override
  @JsonKey(name: 'MRData')
  final MrData? mrData;

  @override
  String toString() {
    return 'F1(mrData: $mrData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$F1Impl &&
            (identical(other.mrData, mrData) || other.mrData == mrData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mrData);

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$F1ImplCopyWith<_$F1Impl> get copyWith =>
      __$$F1ImplCopyWithImpl<_$F1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$F1ImplToJson(
      this,
    );
  }
}

abstract class _F1 implements F1 {
  factory _F1({@JsonKey(name: 'MRData') final MrData? mrData}) = _$F1Impl;

  factory _F1.fromJson(Map<String, dynamic> json) = _$F1Impl.fromJson;

  @override
  @JsonKey(name: 'MRData')
  MrData? get mrData;

  /// Create a copy of F1
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$F1ImplCopyWith<_$F1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
