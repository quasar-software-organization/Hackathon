import 'package:aidcode/data/model/volunteer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class FirestoreService {
  static const volunteersCollection = "volunteers";

  final FirebaseFirestore db;
  FirestoreService(this.db);

  Future<void> createVolunteer(Volunteer volunteer) async {
    await db.collection(volunteersCollection).add(volunteer.toJson());
  }

  // Future<Volunteer> getVolunteer(String id) async {
    // await db.collection(volunteersCollection).get(id);
  // }
}
