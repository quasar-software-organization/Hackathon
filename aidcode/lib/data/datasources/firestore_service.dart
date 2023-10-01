import 'package:aidcode/data/model/non_profit.dart';
import 'package:aidcode/data/model/project.dart';
import 'package:aidcode/data/model/volunteer.dart';
import 'package:aidcode/data/model/volunteer_project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@injectable
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

  Future<List<Volunteer>> getProjectVolunteers(String projectId) async {
    final query = await db
        .collection(volunteerProjectsCollection)
        .where('projectId', isEqualTo: projectId)
        .get();

    List<Volunteer> volunteers = [];
    for (var snapshot in query.docs) {
      final vId = VolunteerProject.fromJson(snapshot.data()).volunteerId;

      final vQuery = await db.collection(volunteersCollection).doc(vId).get();

      var v = Volunteer.fromJson(vQuery.data() as Map<String, dynamic>);
      v = v.copyWith(id: vId);
      volunteers.add(v);
    }

    return volunteers;
  }

  Future<void> createVolunteerProject(VolunteerProject volunteerProject) async {
    await db
        .collection(volunteerProjectsCollection)
        .add(volunteerProject.toJson());
  }

  Future<List<Project>> getVolunteerProjects(String volunteerId) async {
    final query = await db
        .collection(volunteerProjectsCollection)
        .where('volunteerId', isEqualTo: volunteerId)
        .get();

    List<Project> projects = [];
    for (var snapshot in query.docs) {
      final vpId = VolunteerProject.fromJson(snapshot.data()).projectId;

      final pQuery = await db.collection(projectsCollection).doc(vpId).get();

      var p = Project.fromJson(pQuery.data() as Map<String, dynamic>);
      p = p.copyWith(id: vpId);
      projects.add(p);
    }

    return projects;
  }

  Future<void> createProject(Project project) async {
    await db.collection(projectsCollection).add(project.toJson());
  }

  Future<Project> getProject(String id) async {
    final snapshot = await db.collection(projectsCollection).doc(id).get();
    var p = Project.fromJson(snapshot.data() as Map<String, dynamic>);
    p = p.copyWith(id: snapshot.id);

    return p;
  }

  Future<List<Project>> getProjects() async {
    final queryRes = await db.collection(projectsCollection).get();
    var p = queryRes.docs.map((snapshot) {
      var project = Project.fromJson(snapshot.data());
      project = project.copyWith(id: snapshot.id);
      return project;
    }).toList();

    return p;
  }

  Future<void> updateProject(project) async {
    final snapshot =
        await db.collection(projectsCollection).doc(project.id).get();

    var p = snapshot.reference.update(project.toJson());
  }

  Future<void> createNonProfit(NonProfit nonProfit) async {
    await db.collection(nonProfitsCollection).add(nonProfit.toJson());
  }

  Future<NonProfit> getNonProfit(String id) async {
    final snapshot = await db.collection(nonProfitsCollection).doc(id).get();
    var np = NonProfit.fromJson(snapshot.data() as Map<String, dynamic>);
    np = np.copyWith(id: snapshot.id);

    return np;
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
