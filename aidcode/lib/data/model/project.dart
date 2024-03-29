import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    String? id,
    required String name,
    required String description,
    DateTime? startDate,
    DateTime? endDate,
    @Default("webapp") String tag,
    required String status,
    required String nonProfitId,
  }) = _Project;

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);
}
