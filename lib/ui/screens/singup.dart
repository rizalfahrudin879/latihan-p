import 'package:flutter/material.dart';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/register_repository.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  User user;
  ResModel res;

  var email = TextEditingController();
  var noHp = TextEditingController();
  var nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 40,
            color: Colors.grey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    SizedBox(height: 50),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email),
                            hintText: 'EMAIL',
                            labelText: 'EMAIL',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: noHp,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            hintText: 'NO HP',
                            labelText: 'NO HP',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Card(
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: nama,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            hintText: 'NAMA',
                            labelText: 'NAMA',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          //Color(0xFFf7be53),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Color(0xFFf2c85a),
                                  Color(0xFFfea13a),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'SING UP',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                          onPressed: () {
                            user = User(email.text.trim(), noHp.text.trim(),
                                nama.text.trim());
                            RegisterRepository().register(user).then((e) {
                              resModelToJson(e);
                              print(e.status);
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30),
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Dont have account?',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          )),
                      Text('Sign In',
                          style: TextStyle(fontSize: 20, color: Colors.orange))
                    ],
                  ),
                  onPressed: () {
                    print(user.toMap());

                    print(ResModel().toJson());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
