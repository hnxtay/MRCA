import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:mrca/constants/constants.dart';
import 'package:uuid/uuid.dart';

class Api {
  final _fireStore = FirebaseFirestore.instance;
  final _firebaseAuth = auth.FirebaseAuth.instance;
  static final Api _singleton = Api._internal();
  final uuid = const Uuid();

  factory Api() {
    return _singleton;
  }

  Api._internal();

  Stream<QuerySnapshot<Map<String, dynamic>>> getAllConversation(
      int limit, String userId) {
    return _fireStore
        .collection(conversationPath)
        .where('members', arrayContains: userId)
        .limit(limit)
        .snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getMessageOfConversation(
      String conversationId,
      {int limit = 50}) {
    return _fireStore
        .collection(messagePath)
        .where('roomId', isEqualTo: conversationId)
        .limit(limit)
        .orderBy('createAt')
        .snapshots();
  }

  sendMessage(String content, String type, String roomId, type.User author) {
    _fireStore.collection(messagePath).add({
      'author': author.toJson(),
      'type': type,
      'text': content,
      'roomId': roomId,
      'id': uuid.v1(),
      'createAt': '${DateTime.now().millisecondsSinceEpoch}'
    });
    final conversation =
        _fireStore.collection(conversationPath).doc('a58WoFS3VzzPmzbW9Rwv');
    print('aaaaa : $conversation');
    conversation.update({
      'lastMsg': {
        'from': author.id,
        'text': content,
        'time': '${DateTime.now().millisecondsSinceEpoch}',
      }
    });
  }

  Future<type.User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return _mapFirebaseUser(userCredential.user);
    } on auth.FirebaseAuthException catch (e) {
      throw _determineError(e);
    }
  }

  Future<type.User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return _mapFirebaseUser(_firebaseAuth.currentUser);
    } on auth.FirebaseAuthException catch (e) {
      throw _determineError(e);
    }
  }

  AuthError _determineError(auth.FirebaseAuthException exception) {
    switch (exception.code) {
      case 'invalid-email':
        return AuthError.invalidEmail;
      case 'user-disabled':
        return AuthError.userDisabled;
      case 'user-not-found':
        return AuthError.userNotFound;
      case 'wrong-password':
        return AuthError.wrongPassword;
      case 'email-already-in-use':
      case 'account-exists-with-different-credential':
        return AuthError.emailAlreadyInUse;
      case 'invalid-credential':
        return AuthError.invalidCredential;
      case 'operation-not-allowed':
        return AuthError.operationNotAllowed;
      case 'weak-password':
        return AuthError.weakPassword;
      case 'ERROR_MISSING_GOOGLE_AUTH_TOKEN':
      default:
        return AuthError.error;
    }
  }

  type.User? _mapFirebaseUser(auth.User? user) {
    if (user == null) {
      return null;
    }

    var splittedName = ['Name ', 'LastName'];
    if (user.displayName != null) {
      splittedName = user.displayName!.split(' ');
    }

    final map = <String, dynamic>{
      'id': user.uid,
      'firstName': splittedName.first,
      'lastName': splittedName.last,
      'email': user.email ?? '',
      'emailVerified': user.emailVerified,
      'imageUrl': user.photoURL ?? '',
      'isAnonymous': user.isAnonymous,
      'age': 0,
      'phoneNumber': '',
      'address': '',
    };
    return type.User.fromJson(map);
  }
}

enum AuthError {
  invalidEmail,
  userDisabled,
  userNotFound,
  wrongPassword,
  emailAlreadyInUse,
  invalidCredential,
  operationNotAllowed,
  weakPassword,
  error,
}
