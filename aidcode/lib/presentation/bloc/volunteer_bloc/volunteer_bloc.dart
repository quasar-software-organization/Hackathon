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

  String volunteerId = 'qM7nX0ObC4deqiMAueMQ';

  VolunteerBloc(this.repo) : super(const _VolunteerState()) {
    on<VolunteerEvent>(
      (event, emit) async {
        await event.when(
          init: () async {
            emit(state.copyWith(status: VolunteerStatus.loading));

            add(VolunteerEvent.getVolunteer(id: volunteerId));
            add(VolunteerEvent.getVolunteerProjects(id: volunteerId));

            emit(
              state.copyWith(
                  status: VolunteerStatus.loaded, hasInitialized: true),
            );
          },
          getVolunteer: (id) async {
            emit(state.copyWith(status: VolunteerStatus.loading));

            var volunteer = await repo.getVolunteer(id: volunteerId);

            emit(
              state.copyWith(
                status: VolunteerStatus.loaded,
                volunteer: volunteer,
              ),
            );
          },
          putVolunteer: (volunteer) async {
            emit(state.copyWith(status: VolunteerStatus.loading));

            await repo.putVolunteer(volunteer: volunteer);

            emit(state.copyWith(status: VolunteerStatus.loaded));
          },
          getVolunteerProjects: (id) async {
            emit(state.copyWith(status: VolunteerStatus.loading));

            var projects = await repo.getVolunteerProject(id: volunteerId);

            emit(
              state.copyWith(
                status: VolunteerStatus.loaded,
                volunteerProjects: projects,
              ),
            );
          },
          putVolunteerProject: (volunteerProject) async {
            emit(state.copyWith(status: VolunteerStatus.loading));

            await repo.putVolunteerProject(volunteerProject: volunteerProject);

            emit(state.copyWith(status: VolunteerStatus.loaded));
          },
        );
      },
    );
  }
}
