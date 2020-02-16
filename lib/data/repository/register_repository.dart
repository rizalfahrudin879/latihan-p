import 'dart:convert';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:latihan/res/strings.dart';

class RegisterRepository {
  ResModel resModel;
  Future<ResModel> register(User user) async {
    try {
      final headers = {
        'Content-Type': 'application/x-www-form-urlencoded',
      };
      final Map body = user.toMap();
      final encoding = Encoding.getByName('utf-8');

      var response = await http.post(
        AppString.registerURL,
        headers: headers,
        body: body,
        encoding: encoding,
      );

      if (response.statusCode == 200) {
        resModel = resModelFromJson(response.body);
      } else {
        resModel = resModelFromJson(response.body);
      }

    } catch (e) {
      print(e);
    }
    
    return resModel;
  }
}
