// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'non_profit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NonProfit _$NonProfitFromJson(Map<String, dynamic> json) {
  return _NonProfit.fromJson(json);
}

/// @nodoc
mixin _$NonProfit {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NonProfitCopyWith<NonProfit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonProfitCopyWith<$Res> {
  factory $NonProfitCopyWith(NonProfit value, $Res Function(NonProfit) then) =
      _$NonProfitCopyWithImpl<$Res, NonProfit>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$NonProfitCopyWithImpl<$Res, $Val extends NonProfit>
    implements $NonProfitCopyWith<$Res> {
  _$NonProfitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonProfitImplCopyWith<$Res>
    implements $NonProfitCopyWith<$Res> {
  factory _$$NonProfitImplCopyWith(
          _$NonProfitImpl value, $Res Function(_$NonProfitImpl) then) =
      __$$NonProfitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NonProfitImplCopyWithImpl<$Res>
    extends _$NonProfitCopyWithImpl<$Res, _$NonProfitImpl>
    implements _$$NonProfitImplCopyWith<$Res> {
  __$$NonProfitImplCopyWithImpl(
      _$NonProfitImpl _value, $Res Function(_$NonProfitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NonProfitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NonProfitImpl implements _NonProfit {
  const _$NonProfitImpl({required this.name});

  factory _$NonProfitImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonProfitImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'NonProfit(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonProfitImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NonProfitImplCopyWith<_$NonProfitImpl> get copyWith =>
      __$$NonProfitImplCopyWithImpl<_$NonProfitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonProfitImplToJson(
      this,
    );
  }
}

abstract class _NonProfit implements NonProfit {
  const factory _NonProfit({required final String name}) = _$NonProfitImpl;

  factory _NonProfit.fromJson(Map<String, dynamic> json) =
      _$NonProfitImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$NonProfitImplCopyWith<_$NonProfitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
