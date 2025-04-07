import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> getSermons() async {
    final snapshot = await _db.collection('sermons').get();
    return snapshot.docs.map((doc) => doc.data()).toList();
  }
}


