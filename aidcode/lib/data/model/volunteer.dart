import 'package:freezed_annotation/freezed_annotation.dart';

part 'volunteer.freezed.dart';
part 'volunteer.g.dart';

@freezed
class Volunteer with _$Volunteer {
  const factory Volunteer({
    required String name,
  }) = _Volunteer;

  factory Volunteer.fromJson(Map<String, Object?> json) =>
      _$VolunteerFromJson(json);
}
