import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/data/model/volunteer_project.dart';
import 'package:aidcode/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

import '../datasources/firestore_service.dart';

@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  final FirestoreService fs;

  RepositoryImpl(this.fs);

  @override
  Future<List<Project>> getNonProfitsProjects(
      {required String nonProfitId}) async {
    // TODO: implement getNonProfitsProjects
    throw UnimplementedError();
  }

  @override
  Future<Project> getProject({required String id}) async {
    // TODO: implement getProject
    throw UnimplementedError();
  }

  @override
  Future<List<Project>> getProjects() async {
    // TODO: implement getProjects
    throw UnimplementedError();
  }

  @override
  Future<Volunteer> getVolunteer({required String id}) async {
    return fs.getVolunteer(id);
  }

  @override
  Future<List<Project>> getVolunteerProject({required String id}) async {
    return fs.getVolunteerProjects(id);
  }

  @override
  Future<void> putNonProfit({required NonProfit nonProfit}) async {
    // TODO: implement putNonProfit
    throw UnimplementedError();
  }

  @override
  Future<void> putProject({required Project project}) async {
    // TODO: implement putProject
    throw UnimplementedError();
  }

  @override
  Future<void> putVolunteer({required Volunteer volunteer}) async {
    // TODO: implement putVolunteer
    throw UnimplementedError();
  }

  @override
  Future<void> putVolunteerProject(
      {required VolunteerProject volunteerProject}) async {
    // TODO: implement putVolunteerProject
    throw UnimplementedError();
  }
}
