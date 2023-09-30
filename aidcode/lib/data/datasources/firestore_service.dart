import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/data/model/volunteer_project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static const volunteersCollection = "volunteers";
  static const volunteerProjectsCollection = "volunteerProjects";
  static const projectsCollection = "projects";
  static const nonProfitsCollection = "nonProfits";

  final FirebaseFirestore db;

  FirestoreService(this.db);

  Future<void> createVolunteer(Volunteer volunteer) async {
    await db.collection(volunteersCollection).add(volunteer.toJson());
  }

  Future<Volunteer> getVolunteer(String id) async {
    final snapshot = await db.collection(volunteersCollection).doc(id).get();
    var v = Volunteer.fromJson(snapshot.data() as Map<String, dynamic>);
    v = v.copyWith(id: snapshot.id);

    return v;
  }

  Future<void> createVolunteerProject(VolunteerProject volunteerProject) async {
    await db
        .collection(volunteerProjectsCollection)
        .add(volunteerProject.toJson());
  }

  Future<List<Project>> getVolunteerProjects(String volunteerId) async {
    final snapshot = await db
        .collection(volunteerProjectsCollection)
        .where('volunteerId', isEqualTo: volunteerId)
        .get();

    return [
      const Project(
          id: 'fake',
          name: 'fake',
          description: 'fake project',
          status: 'fake',
          nonProfitId: 'fake')
    ];
  }

  Future<void> createProject(Project project) async {
    await db.collection(projectsCollection).add(project.toJson());
  }

  Future<Project> getProject(String id) async {
    return const Project(
        id: 'fake',
        name: 'fake',
        description: 'fake project',
        status: 'fake',
        nonProfitId: 'fake');
  }

  Future<List<Project>> getProjects() async {
    final queryRes = await db.collection(projectsCollection).get();
    var p = queryRes.docs
        .map((snapshot) => Project.fromJson(snapshot.data()))
        .toList();

    return p;
  }

  Future<void> updateProject(Project project) async {
    // await db.collection(projectsCollection)
  }

  Future<void> createNonProfit(NonProfit nonProfit) async {
    await db.collection(nonProfitsCollection).add(nonProfit.toJson());
  }

  Future<List<Project>> getNonProfitProjects(String nonProfitId) async {
    final queryRes = await db
        .collection(projectsCollection)
        .where('nonProfitId', isEqualTo: nonProfitId)
        .get();
    var p = queryRes.docs
        .map((snapshot) => Project.fromJson(snapshot.data()))
        .toList();

    return p;
  }
}
