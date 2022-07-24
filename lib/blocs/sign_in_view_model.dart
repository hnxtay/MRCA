import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:mrca/api/api.dart';

class SignInViewModel extends ChangeNotifier {
  final _api = Api();

  var _email = '';
  var _password = '';

  setEmail(String email) {
    _email = email;
  }

  setPassword(String password) {
    _password = password;
  }

  Future<type.User?> signInWithEmailAndPassword() {
    return _api.signInWithEmailAndPassword(email: _email, password: _password);
  }
}
