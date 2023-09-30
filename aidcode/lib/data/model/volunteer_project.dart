import 'package:freezed_annotation/freezed_annotation.dart';

part 'volunteer_project.freezed.dart';
part 'volunteer_project.g.dart';

@freezed
class VolunteerProject with _$VolunteerProject {
  const factory VolunteerProject({
    required String volunteerId,
    required String projectId,
  }) = _VolunteerProject;

  factory VolunteerProject.fromJson(Map<String, Object?> json) =>
      _$VolunteerProjectFromJson(json);
}
