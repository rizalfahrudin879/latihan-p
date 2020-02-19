import 'dart:async';
import 'package:flutter/material.dart';
import 'package:latihan/ui/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboard.dart';

class Splash extends StatelessWidget {
  final SharedPreferences prefs;
  Splash({this.prefs});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            bool seen = (prefs.getBool('seen') ?? false);
           return seen ? LoginPage() : OnBoard(prefs: prefs);
          },
        ),
      );
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topRight,
                end: FractionalOffset.bottomLeft,
                colors: [
              Colors.orange,
              Colors.white,
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(height: 130, width: 130, child: Icon(Icons.info)),
              Text(
                "Ini splash",
                style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 68, 44, 46),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
