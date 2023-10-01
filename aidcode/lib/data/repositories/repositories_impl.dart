import 'package:aidcode/data/datasources/firestore_service.dart';
import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/data/model/volunteer_project.dart';
import 'package:aidcode/domain/repositories/repository.dart';
import 'package:injectable/injectable.dart';

import '../datasources/linkedin_datasource.dart';

@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  final FirestoreService fs;
  final LinkedinDatasource linkDS;

  RepositoryImpl(this.fs, this.linkDS);

  @override
  Future<List<Project>> getNonProfitsProjects(
      {required String nonProfitId}) async {
    return await fs.getNonProfitProjects(nonProfitId);
  }

  @override
  Future<NonProfit> getNonProfit({required String nonProfitId}) async {
    return await fs.getNonProfit(nonProfitId);
  }

  @override
  Future<Project> getProject({required String id}) async {
    return await fs.getProject(id);
  }

  @override
  Future<List<Project>> getProjects() async {
    return await fs.getProjects();
  }

  @override
  Future<Volunteer> getVolunteer({required String id}) async {
    return await fs.getVolunteer(id);
  }

  @override
  Future<List<Project>> getVolunteerProject({required String id}) async {
    return await fs.getVolunteerProjects(id);
  }

  @override
  Future<void> putNonProfit({required NonProfit nonProfit}) async {
    // TODO: implement putNonProfit
    throw UnimplementedError();
  }

  @override
  Future<void> putProject(
      {required Project project, required String nonProfitName}) async {
    await linkDS.createPost(
      title: project.name,
      description: project.description,
      nonProfitName: nonProfitName,
    );
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
