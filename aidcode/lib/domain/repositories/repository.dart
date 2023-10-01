// @injectable
import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';

import '../../data/model/volunteer_project.dart';

abstract class Repository {
  Future<Volunteer> getVolunteer({required String id});

  Future<void> putVolunteer({required Volunteer volunteer});

  Future<void> putVolunteerProject(
      {required VolunteerProject volunteerProject});

  Future<List<Project>> getVolunteerProject({required String id});

  Future<void> putProject(
      {required Project project, required String nonProfitName});

  Future<Project> getProject({required String id});

  Future<List<Project>> getProjects();

  Future<void> putNonProfit({required NonProfit nonProfit});

  Future<List<Project>> getNonProfitsProjects({required String nonProfitId});

  Future<NonProfit> getNonProfit({required String nonProfitId});
}
