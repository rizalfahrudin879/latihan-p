import 'package:flutter/foundation.dart';

class Aktivasi with ChangeNotifier {
  String _input = '';
  String _input1 = '';
  String _input2 = '';
  String _input3 = '';
  String _input4 = '';
  String _input5 = '';

  set input(String value) {
    _input = value;
    notifyListeners();
  }

  set input1(String value) {
    _input1 = value;
    notifyListeners();
  }

  set input2(String value) {
    _input2 = value;
    notifyListeners();
  }

  set input3(String value) {
    _input3 = value;
    notifyListeners();
  }

  set input4(String value) {
    _input4 = value;
    notifyListeners();
  }

  set input5(String value) {
    _input5 = value;
    notifyListeners();
  }

  String get isValue =>
      '$_input$_input1$_input2$_input3$_input4$_input5'.trim();
}
