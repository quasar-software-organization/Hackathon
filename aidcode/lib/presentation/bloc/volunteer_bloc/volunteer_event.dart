part of 'volunteer_bloc.dart';

@freezed
class VolunteerEvent with _$VolunteerEvent {
  const factory VolunteerEvent.init() = _Init;
  const factory VolunteerEvent.getVolunteer({required String id}) =
      _GetVolunteer;
  const factory VolunteerEvent.putVolunteer({required Volunteer volunteer}) =
      _PutVolunteer;
  const factory VolunteerEvent.getVolunteerProjects({required String id}) =
      _GetVolunteerProject;
  const factory VolunteerEvent.putVolunteerProject(
      {required VolunteerProject volunteerProject}) = _PutVolunteerProject;
}
