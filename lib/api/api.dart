import 'package:cloud_firestore/cloud_firestore.dart';

class Api {
  final _fireStore = FirebaseFirestore.instance;
  static final Api _singleton = Api._internal();

  factory Api() {
    return _singleton;
  }

  Api._internal();

  Stream<QuerySnapshot<Map<String, dynamic>>> getFirestoreData(
      String collectionPath, int limit) {
    return _fireStore.collection(collectionPath).limit(limit).snapshots();
  }
}
