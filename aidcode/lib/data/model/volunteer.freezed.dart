// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Volunteer _$VolunteerFromJson(Map<String, dynamic> json) {
  return _Volunteer.fromJson(json);
}

/// @nodoc
mixin _$Volunteer {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolunteerCopyWith<Volunteer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerCopyWith<$Res> {
  factory $VolunteerCopyWith(Volunteer value, $Res Function(Volunteer) then) =
      _$VolunteerCopyWithImpl<$Res, Volunteer>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$VolunteerCopyWithImpl<$Res, $Val extends Volunteer>
    implements $VolunteerCopyWith<$Res> {
  _$VolunteerCopyWithImpl(this._value, this._then);

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
abstract class _$$VolunteerImplCopyWith<$Res>
    implements $VolunteerCopyWith<$Res> {
  factory _$$VolunteerImplCopyWith(
          _$VolunteerImpl value, $Res Function(_$VolunteerImpl) then) =
      __$$VolunteerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$VolunteerImplCopyWithImpl<$Res>
    extends _$VolunteerCopyWithImpl<$Res, _$VolunteerImpl>
    implements _$$VolunteerImplCopyWith<$Res> {
  __$$VolunteerImplCopyWithImpl(
      _$VolunteerImpl _value, $Res Function(_$VolunteerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$VolunteerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolunteerImpl implements _Volunteer {
  const _$VolunteerImpl({required this.name});

  factory _$VolunteerImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Volunteer(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerImplCopyWith<_$VolunteerImpl> get copyWith =>
      __$$VolunteerImplCopyWithImpl<_$VolunteerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerImplToJson(
      this,
    );
  }
}

abstract class _Volunteer implements Volunteer {
  const factory _Volunteer({required final String name}) = _$VolunteerImpl;

  factory _Volunteer.fromJson(Map<String, dynamic> json) =
      _$VolunteerImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VolunteerImplCopyWith<_$VolunteerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
