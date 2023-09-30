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
    // await db.collection(volunteersCollection).get(id);
    return const Volunteer(
      id: 'fake',
      name: 'fake',
      age: 21,
      availability: 1,
      skills: 'fake skills',
      experience: 'advance',
      availabilityDuration: '3 months',
      phoneNumber: '(111) 111-1111',
      email: 'fake@fake.com',
    );
  }

  Future<void> createVolunteerProject(VolunteerProject volunteerProject) async {
    await db.collection(volunteerProjectsCollection).add(volunteerProject.toJson());
  }

  Future<List<Project>> getVolunteerProjects(String id) async {
    return [
      const Project(
        id: 'fake',
        name: 'fake',
        description: 'fake project',
        status: 'fake'
      )
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
      status: 'fake'
    );
  }

  Future<List<Project>> getProjects() async {
    return [
      const Project(
          id: 'fake',
          name: 'fake',
          description: 'fake project',
          status: 'fake'
      )
    ];
  }

  Future<void> updateProject(Project project) async{
    // await db.collection(projectsCollection)
  }

  Future<void> createNonProfit(NonProfit nonProfit) async {
    await db.collection(nonProfitsCollection).add(nonProfit.toJson());
  }

  Future<List<Project>> getNonProfitProjects(String nonProfitId) async {
    return [
      const Project(
          id: 'fake',
          name: 'fake',
          description: 'fake project',
          status: 'fake'
      )
    ];
  }
}
