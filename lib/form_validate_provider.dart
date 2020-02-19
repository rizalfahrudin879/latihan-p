import 'package:flutter/foundation.dart';

class FormValidate with ChangeNotifier {
  String _emailLogin = '';
  String _passwordLogin = '';
  String _namaRegister = '';
  String _emailRegister = '';
  String _noHpRegister = '';

  set emailLogin(String value) {
    _emailLogin = value;
    notifyListeners();
  }

  set passwordLogin(String value) {
    _passwordLogin = value;
    notifyListeners();
  }

  set namaRegister(String value) {
    _namaRegister = value;
    notifyListeners();
  }

  set emailRegister(String value) {
    _emailRegister = value;
    notifyListeners();
  }

  set noHp(String value) {
    _noHpRegister = value;
    notifyListeners();
  }

  bool get isValide => (_emailLogin.isEmpty || _passwordLogin.isEmpty);

  bool get isValideRegister => (_namaRegister.isEmpty ||
      _emailRegister.isEmpty ||
      _noHpRegister.isEmpty);
}
