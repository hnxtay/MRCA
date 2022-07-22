import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mrca/constants/firestore_constants.dart';

class Api {
  final _fireStore = FirebaseFirestore.instance;
  static final Api _singleton = Api._internal();

  factory Api() {
    return _singleton;
  }

  Api._internal();

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllConversation(int limit) {
    return _fireStore.collection(conversationPath).limit(limit).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getMessageOfConversation(
      String conversationId,
      {int limit = 50}) {
    return _fireStore
        .collection(messagePath)
        .where('roomId', isEqualTo: conversationId)
        .limit(limit)
        .snapshots();
  }
}
