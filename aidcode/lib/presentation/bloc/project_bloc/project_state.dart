part of 'project_bloc.dart';

enum ProjectStatus { none, loading, loaded }

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({
    @Default(false) bool hasInitialized,
    @Default(ProjectStatus.none) ProjectStatus status,
    @Default([]) List<Project> projects,
    Project? project,
  }) = _ProjectState;
}
