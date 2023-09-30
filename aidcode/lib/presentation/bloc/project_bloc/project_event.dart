part of 'project_bloc.dart';

@freezed
class ProjectEvent with _$ProjectEvent {
  const factory ProjectEvent.init() = _Init;
  const factory ProjectEvent.putProject({required Project project}) =
      _PutProject;
  const factory ProjectEvent.getProject({required String id}) = _GetProject;
  const factory ProjectEvent.getProjects() = _GetProjects;
}
