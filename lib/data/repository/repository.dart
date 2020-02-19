import 'dart:convert';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/res/strings.dart';

class Repository {
  ResModel resModel;
  final headers = {'Content-Type': 'application/x-www-form-urlencoded'};
  final encoding = Encoding.getByName('utf-8');

  Future<ResModel> register(User user) async {
    final Map data = user.toJsonRegis();

    try {
      var response = await http.post(
        AppString.registerURL,
        headers: headers,
        body: data,
        encoding: encoding,
      );

      if (response.statusCode == 200)
        resModel = resModelFromJson(response.body);
      else
        resModel = resModelFromJson(response.body);
    } catch (e) {
      print(e);
    }
    return resModel;
  }

  Future<User> firstLogin({String email, String password}) async {
    User user;
    print("$email dan $password checked");
    Map<String, dynamic> data = {
      "email": email,
      "password": password,
    };

    try {
      var response = await http.post(
        AppString.firstLoginURL,
        headers: headers,
        body: data,
        encoding: encoding,
      );
      var datax = json.decode(response.body)["data"];
      user = User.fromJson(datax);
      // print(json.decode(response.body)["data"]);
    } catch (e) {
      print(e);
    }
    return user;
  }

  Future<User> updatePassword(
      {String id, String email, String newPassword}) async {
    User user;
    Map<dynamic, String> data = {
      'id': id,
      'email': email,
      'passwordBaru': newPassword,
    };

    try {
      var response = await http.post(
        AppString.updatePasswordURL,
        headers: headers,
        body: data,
        encoding: encoding,
      );
      print(response.body);
      // var dcode = json.encode(response.body.to);
      user = userFromJson(response.body);
    } catch (e) {
      print(e);
    }
    return user;
  }
}
