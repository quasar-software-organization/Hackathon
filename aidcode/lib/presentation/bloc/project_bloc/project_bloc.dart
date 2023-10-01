import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/domain/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'project_event.dart';

part 'project_state.dart';

part 'project_bloc.freezed.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  final Repository repository;

  ProjectBloc(this.repository) : super(const _ProjectState()) {
    on<ProjectEvent>(
      (event, emit) async {
        await event.when(
          init: () async {
            List<Project> projects = await repository.getProjects();
            emit(state.copyWith(projects: projects, hasInitialized: true));
          },
          putProject: (project, nonProfitName) async {
            emit(state.copyWith(status: ProjectStatus.loading));

            await repository.putProject(
              project: project,
              nonProfitName: nonProfitName,
            );

            emit(state.copyWith(status: ProjectStatus.loaded));
          },
          getProject: (id) async {
            emit(state.copyWith(status: ProjectStatus.loading));

            Project project = await repository.getProject(id: id);

            emit(state.copyWith(project: project));
          },
          getProjects: () async {
            emit(state.copyWith(status: ProjectStatus.loading));

            List<Project> projects = await repository.getProjects();

            emit(state.copyWith(projects: projects));
          },
        );
      },
    );
  }
}
