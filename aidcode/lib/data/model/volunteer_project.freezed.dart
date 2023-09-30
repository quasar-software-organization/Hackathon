// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'volunteer_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VolunteerProject _$VolunteerProjectFromJson(Map<String, dynamic> json) {
  return _VolunteerProject.fromJson(json);
}

/// @nodoc
mixin _$VolunteerProject {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolunteerProjectCopyWith<VolunteerProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolunteerProjectCopyWith<$Res> {
  factory $VolunteerProjectCopyWith(
          VolunteerProject value, $Res Function(VolunteerProject) then) =
      _$VolunteerProjectCopyWithImpl<$Res, VolunteerProject>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$VolunteerProjectCopyWithImpl<$Res, $Val extends VolunteerProject>
    implements $VolunteerProjectCopyWith<$Res> {
  _$VolunteerProjectCopyWithImpl(this._value, this._then);

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
abstract class _$$VolunteerProjectImplCopyWith<$Res>
    implements $VolunteerProjectCopyWith<$Res> {
  factory _$$VolunteerProjectImplCopyWith(_$VolunteerProjectImpl value,
          $Res Function(_$VolunteerProjectImpl) then) =
      __$$VolunteerProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$VolunteerProjectImplCopyWithImpl<$Res>
    extends _$VolunteerProjectCopyWithImpl<$Res, _$VolunteerProjectImpl>
    implements _$$VolunteerProjectImplCopyWith<$Res> {
  __$$VolunteerProjectImplCopyWithImpl(_$VolunteerProjectImpl _value,
      $Res Function(_$VolunteerProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$VolunteerProjectImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VolunteerProjectImpl implements _VolunteerProject {
  const _$VolunteerProjectImpl({required this.name});

  factory _$VolunteerProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$VolunteerProjectImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'VolunteerProject(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VolunteerProjectImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VolunteerProjectImplCopyWith<_$VolunteerProjectImpl> get copyWith =>
      __$$VolunteerProjectImplCopyWithImpl<_$VolunteerProjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VolunteerProjectImplToJson(
      this,
    );
  }
}

abstract class _VolunteerProject implements VolunteerProject {
  const factory _VolunteerProject({required final String name}) =
      _$VolunteerProjectImpl;

  factory _VolunteerProject.fromJson(Map<String, dynamic> json) =
      _$VolunteerProjectImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VolunteerProjectImplCopyWith<_$VolunteerProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
