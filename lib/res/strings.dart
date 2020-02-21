import 'package:flutter/material.dart';

class AppString {
  // URI
  static String baseURL = "http://api.londriku.com/index.php/user";
  static String registerURL = baseURL + "/register";
  static String firstLoginURL = baseURL + "/FirstLogin";
  static String updatePasswordURL = baseURL + "/UbahPass";

  // COLOR
  static const Color purple = Color(0xff7a81dd);
  static const Color lightpurple = Color(0xff898edf);
  static const Color darkpurple = Color(0xff7178d3);
  static const Color extraDarkPurple = Color(0xff494c79);
}
