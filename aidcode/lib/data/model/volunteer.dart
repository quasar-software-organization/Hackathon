import 'package:freezed_annotation/freezed_annotation.dart';

part 'volunteer.freezed.dart';
part 'volunteer.g.dart';

@freezed
class Volunteer with _$Volunteer {
  const factory Volunteer({
    String? id,
    required String name,
    required int age,
    // This is measure in hours by day
    required int availability,
    required String skills,
    required String experience,
    // Short-term or Long-term
    required String availabilityDuration,
    required String phoneNumber,
    required String email,
  }) = _Volunteer;

  factory Volunteer.fromJson(Map<String, Object?> json) =>
      _$VolunteerFromJson(json);
}
