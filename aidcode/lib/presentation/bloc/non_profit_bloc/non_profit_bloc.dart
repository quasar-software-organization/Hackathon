import 'package:aidcode/domain/repositories/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/non_profit.dart';
import '../../../data/model/project.dart';

part 'non_profit_event.dart';

part 'non_profit_state.dart';

part 'non_profit_bloc.freezed.dart';

@injectable
class NonProfitBloc extends Bloc<NonProfitEvent, NonProfitState> {
  final Repository repo;

  NonProfitBloc(this.repo) : super(const _NonProfitState()) {
    on<NonProfitEvent>(
      (event, emit) async {
        await event.when(
          init: () async {},
          putNonProfit: (nonProfit) async {},
          getNonProfitsProjects: (nonProfitId) async {
            List<Project> projects = await repo.getNonProfitsProjects(nonProfitId: nonProfitId);
            emit(state.copyWith(projects: projects, hasInitialized: true));
          },
        );
      },
    );
  }
}
