import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/domain/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/project.dart';
import '../../../data/model/volunteer_project.dart';

part 'volunteer_event.dart';
part 'volunteer_state.dart';
part 'volunteer_bloc.freezed.dart';

@injectable
class VolunteerBloc extends Bloc<VolunteerEvent, VolunteerState> {
  final Repository repo;

  VolunteerBloc(this.repo) : super(const _VolunteerState()) {
    on<VolunteerEvent>(
      (event, emit) async {
        await event.when(
          init: () async {},
          getVolunteer: (id) async {},
          putVolunteer: (volunteer) async {},
          getVolunteerProjects: (id) async {},
          putVolunteerProject: (volunteerProject) async {},
        );
      },
    );
  }
}
