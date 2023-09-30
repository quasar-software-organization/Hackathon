import 'package:aidcode/data/datasources/firestore_service.dart';
import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/data/model/volunteer_project.dart';
import 'package:aidcode/domain/repositories/repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Repository)
class RepositoryImpl implements Repository {
  FirestoreService fs = FirestoreService(FirebaseFirestore.instance);

  @override
  Future<List<Project>> getNonProfitsProjects({required String nonProfitId}) async {
    return await fs.getNonProfitProjects(nonProfitId);
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
    // TODO: implement getVolunteerProject
    throw UnimplementedError();
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
  Future<void> putVolunteerProject({required VolunteerProject volunteerProject}) async {
    // TODO: implement putVolunteerProject
    throw UnimplementedError();
  }
}
