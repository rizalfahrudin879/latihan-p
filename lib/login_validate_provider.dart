import 'package:flutter/foundation.dart';

class LoginValidate with ChangeNotifier {
  String _email = '';
  String _password = '';

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }
  bool get isValide => (_email.isEmpty || _password.isEmpty);
}
