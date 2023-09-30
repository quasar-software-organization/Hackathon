part of 'volunteer_bloc.dart';

enum VolunteerStatus { none, loading, loaded }

@freezed
class VolunteerState with _$VolunteerState {
  const factory VolunteerState({
    @Default(false) bool hasInitialized,
    @Default(VolunteerStatus.none) VolunteerStatus status,
    @Default([]) List<Project> volunteerProjects,
    Volunteer? volunteer,
  }) = _VolunteerState;
}
