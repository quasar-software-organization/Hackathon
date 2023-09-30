// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volunteer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolunteerImpl _$$VolunteerImplFromJson(Map<String, dynamic> json) =>
    _$VolunteerImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      availability: json['availability'] as int,
      skills: json['skills'] as String,
      experience: json['experience'] as String,
      availabilityDuration: json['availabilityDuration'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$VolunteerImplToJson(_$VolunteerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'availability': instance.availability,
      'skills': instance.skills,
      'experience': instance.experience,
      'availabilityDuration': instance.availabilityDuration,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };
