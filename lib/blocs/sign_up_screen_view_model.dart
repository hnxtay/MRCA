import 'package:flutter/foundation.dart';
import 'package:mrca/api/api.dart';

class SignUpScreenViewModel extends ChangeNotifier {
  final _api = Api();

  var _email = '';
  var _password = '';

  setEmail(String email) {
    _email = email;
  }

  setPassword(String password) {
    _password = password;
  }

  signUpWithEmailAndPassword() {
    _api.registerWithEmailAndPassword(_email, _password);
  }
}
