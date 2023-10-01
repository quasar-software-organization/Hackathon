// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Project project, String nonProfitName) putProject,
    required TResult Function(String id) getProject,
    required TResult Function() getProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Project project, String nonProfitName)? putProject,
    TResult? Function(String id)? getProject,
    TResult? Function()? getProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Project project, String nonProfitName)? putProject,
    TResult Function(String id)? getProject,
    TResult Function()? getProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PutProject value) putProject,
    required TResult Function(_GetProject value) getProject,
    required TResult Function(_GetProjects value) getProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PutProject value)? putProject,
    TResult? Function(_GetProject value)? getProject,
    TResult? Function(_GetProjects value)? getProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PutProject value)? putProject,
    TResult Function(_GetProject value)? getProject,
    TResult Function(_GetProjects value)? getProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res, ProjectEvent>;
}

/// @nodoc
class _$ProjectEventCopyWithImpl<$Res, $Val extends ProjectEvent>
    implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ProjectEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Project project, String nonProfitName) putProject,
    required TResult Function(String id) getProject,
    required TResult Function() getProjects,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Project project, String nonProfitName)? putProject,
    TResult? Function(String id)? getProject,
    TResult? Function()? getProjects,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Project project, String nonProfitName)? putProject,
    TResult Function(String id)? getProject,
    TResult Function()? getProjects,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PutProject value) putProject,
    required TResult Function(_GetProject value) getProject,
    required TResult Function(_GetProjects value) getProjects,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PutProject value)? putProject,
    TResult? Function(_GetProject value)? getProject,
    TResult? Function(_GetProjects value)? getProjects,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PutProject value)? putProject,
    TResult Function(_GetProject value)? getProject,
    TResult Function(_GetProjects value)? getProjects,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ProjectEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$PutProjectImplCopyWith<$Res> {
  factory _$$PutProjectImplCopyWith(
          _$PutProjectImpl value, $Res Function(_$PutProjectImpl) then) =
      __$$PutProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Project project, String nonProfitName});

  $ProjectCopyWith<$Res> get project;
}

/// @nodoc
class __$$PutProjectImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$PutProjectImpl>
    implements _$$PutProjectImplCopyWith<$Res> {
  __$$PutProjectImplCopyWithImpl(
      _$PutProjectImpl _value, $Res Function(_$PutProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? nonProfitName = null,
  }) {
    return _then(_$PutProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project,
      nonProfitName: null == nonProfitName
          ? _value.nonProfitName
          : nonProfitName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res> get project {
    return $ProjectCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$PutProjectImpl implements _PutProject {
  const _$PutProjectImpl({required this.project, required this.nonProfitName});

  @override
  final Project project;
  @override
  final String nonProfitName;

  @override
  String toString() {
    return 'ProjectEvent.putProject(project: $project, nonProfitName: $nonProfitName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PutProjectImpl &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.nonProfitName, nonProfitName) ||
                other.nonProfitName == nonProfitName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project, nonProfitName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PutProjectImplCopyWith<_$PutProjectImpl> get copyWith =>
      __$$PutProjectImplCopyWithImpl<_$PutProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Project project, String nonProfitName) putProject,
    required TResult Function(String id) getProject,
    required TResult Function() getProjects,
  }) {
    return putProject(project, nonProfitName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Project project, String nonProfitName)? putProject,
    TResult? Function(String id)? getProject,
    TResult? Function()? getProjects,
  }) {
    return putProject?.call(project, nonProfitName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Project project, String nonProfitName)? putProject,
    TResult Function(String id)? getProject,
    TResult Function()? getProjects,
    required TResult orElse(),
  }) {
    if (putProject != null) {
      return putProject(project, nonProfitName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PutProject value) putProject,
    required TResult Function(_GetProject value) getProject,
    required TResult Function(_GetProjects value) getProjects,
  }) {
    return putProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PutProject value)? putProject,
    TResult? Function(_GetProject value)? getProject,
    TResult? Function(_GetProjects value)? getProjects,
  }) {
    return putProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PutProject value)? putProject,
    TResult Function(_GetProject value)? getProject,
    TResult Function(_GetProjects value)? getProjects,
    required TResult orElse(),
  }) {
    if (putProject != null) {
      return putProject(this);
    }
    return orElse();
  }
}

abstract class _PutProject implements ProjectEvent {
  const factory _PutProject(
      {required final Project project,
      required final String nonProfitName}) = _$PutProjectImpl;

  Project get project;
  String get nonProfitName;
  @JsonKey(ignore: true)
  _$$PutProjectImplCopyWith<_$PutProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProjectImplCopyWith<$Res> {
  factory _$$GetProjectImplCopyWith(
          _$GetProjectImpl value, $Res Function(_$GetProjectImpl) then) =
      __$$GetProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetProjectImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$GetProjectImpl>
    implements _$$GetProjectImplCopyWith<$Res> {
  __$$GetProjectImplCopyWithImpl(
      _$GetProjectImpl _value, $Res Function(_$GetProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetProjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProjectImpl implements _GetProject {
  const _$GetProjectImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectEvent.getProject(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProjectImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProjectImplCopyWith<_$GetProjectImpl> get copyWith =>
      __$$GetProjectImplCopyWithImpl<_$GetProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Project project, String nonProfitName) putProject,
    required TResult Function(String id) getProject,
    required TResult Function() getProjects,
  }) {
    return getProject(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Project project, String nonProfitName)? putProject,
    TResult? Function(String id)? getProject,
    TResult? Function()? getProjects,
  }) {
    return getProject?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Project project, String nonProfitName)? putProject,
    TResult Function(String id)? getProject,
    TResult Function()? getProjects,
    required TResult orElse(),
  }) {
    if (getProject != null) {
      return getProject(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PutProject value) putProject,
    required TResult Function(_GetProject value) getProject,
    required TResult Function(_GetProjects value) getProjects,
  }) {
    return getProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PutProject value)? putProject,
    TResult? Function(_GetProject value)? getProject,
    TResult? Function(_GetProjects value)? getProjects,
  }) {
    return getProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PutProject value)? putProject,
    TResult Function(_GetProject value)? getProject,
    TResult Function(_GetProjects value)? getProjects,
    required TResult orElse(),
  }) {
    if (getProject != null) {
      return getProject(this);
    }
    return orElse();
  }
}

abstract class _GetProject implements ProjectEvent {
  const factory _GetProject({required final String id}) = _$GetProjectImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$GetProjectImplCopyWith<_$GetProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProjectsImplCopyWith<$Res> {
  factory _$$GetProjectsImplCopyWith(
          _$GetProjectsImpl value, $Res Function(_$GetProjectsImpl) then) =
      __$$GetProjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProjectsImplCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res, _$GetProjectsImpl>
    implements _$$GetProjectsImplCopyWith<$Res> {
  __$$GetProjectsImplCopyWithImpl(
      _$GetProjectsImpl _value, $Res Function(_$GetProjectsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProjectsImpl implements _GetProjects {
  const _$GetProjectsImpl();

  @override
  String toString() {
    return 'ProjectEvent.getProjects()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Project project, String nonProfitName) putProject,
    required TResult Function(String id) getProject,
    required TResult Function() getProjects,
  }) {
    return getProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Project project, String nonProfitName)? putProject,
    TResult? Function(String id)? getProject,
    TResult? Function()? getProjects,
  }) {
    return getProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Project project, String nonProfitName)? putProject,
    TResult Function(String id)? getProject,
    TResult Function()? getProjects,
    required TResult orElse(),
  }) {
    if (getProjects != null) {
      return getProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_PutProject value) putProject,
    required TResult Function(_GetProject value) getProject,
    required TResult Function(_GetProjects value) getProjects,
  }) {
    return getProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_PutProject value)? putProject,
    TResult? Function(_GetProject value)? getProject,
    TResult? Function(_GetProjects value)? getProjects,
  }) {
    return getProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_PutProject value)? putProject,
    TResult Function(_GetProject value)? getProject,
    TResult Function(_GetProjects value)? getProjects,
    required TResult orElse(),
  }) {
    if (getProjects != null) {
      return getProjects(this);
    }
    return orElse();
  }
}

abstract class _GetProjects implements ProjectEvent {
  const factory _GetProjects() = _$GetProjectsImpl;
}

/// @nodoc
mixin _$ProjectState {
  bool get hasInitialized => throw _privateConstructorUsedError;
  ProjectStatus get status => throw _privateConstructorUsedError;
  List<Project> get projects => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectStateCopyWith<ProjectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res, ProjectState>;
  @useResult
  $Res call(
      {bool hasInitialized,
      ProjectStatus status,
      List<Project> projects,
      Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$ProjectStateCopyWithImpl<$Res, $Val extends ProjectState>
    implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasInitialized = null,
    Object? status = null,
    Object? projects = null,
    Object? project = freezed,
  }) {
    return _then(_value.copyWith(
      hasInitialized: null == hasInitialized
          ? _value.hasInitialized
          : hasInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectStateImplCopyWith<$Res>
    implements $ProjectStateCopyWith<$Res> {
  factory _$$ProjectStateImplCopyWith(
          _$ProjectStateImpl value, $Res Function(_$ProjectStateImpl) then) =
      __$$ProjectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasInitialized,
      ProjectStatus status,
      List<Project> projects,
      Project? project});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$ProjectStateImplCopyWithImpl<$Res>
    extends _$ProjectStateCopyWithImpl<$Res, _$ProjectStateImpl>
    implements _$$ProjectStateImplCopyWith<$Res> {
  __$$ProjectStateImplCopyWithImpl(
      _$ProjectStateImpl _value, $Res Function(_$ProjectStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasInitialized = null,
    Object? status = null,
    Object? projects = null,
    Object? project = freezed,
  }) {
    return _then(_$ProjectStateImpl(
      hasInitialized: null == hasInitialized
          ? _value.hasInitialized
          : hasInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }
}

/// @nodoc

class _$ProjectStateImpl implements _ProjectState {
  const _$ProjectStateImpl(
      {this.hasInitialized = false,
      this.status = ProjectStatus.none,
      final List<Project> projects = const [],
      this.project})
      : _projects = projects;

  @override
  @JsonKey()
  final bool hasInitialized;
  @override
  @JsonKey()
  final ProjectStatus status;
  final List<Project> _projects;
  @override
  @JsonKey()
  List<Project> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final Project? project;

  @override
  String toString() {
    return 'ProjectState(hasInitialized: $hasInitialized, status: $status, projects: $projects, project: $project)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectStateImpl &&
            (identical(other.hasInitialized, hasInitialized) ||
                other.hasInitialized == hasInitialized) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasInitialized, status,
      const DeepCollectionEquality().hash(_projects), project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      __$$ProjectStateImplCopyWithImpl<_$ProjectStateImpl>(this, _$identity);
}

abstract class _ProjectState implements ProjectState {
  const factory _ProjectState(
      {final bool hasInitialized,
      final ProjectStatus status,
      final List<Project> projects,
      final Project? project}) = _$ProjectStateImpl;

  @override
  bool get hasInitialized;
  @override
  ProjectStatus get status;
  @override
  List<Project> get projects;
  @override
  Project? get project;
  @override
  @JsonKey(ignore: true)
  _$$ProjectStateImplCopyWith<_$ProjectStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
