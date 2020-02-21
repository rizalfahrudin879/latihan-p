import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/repository.dart';
import 'package:latihan/res/strings.dart';

import 'verifikasi.dart';

class SingUpPage extends StatefulWidget {
  @override
  RegisState createState() => RegisState();
}

class RegisState extends State<SingUpPage> {
  double width;
  User user;
  ResModel res;

  var email = TextEditingController();
  var noHp = TextEditingController();
  var nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                child: Container(
                    height: 120,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppString.purple,
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                            top: 20,
                            right: -100,
                            child: _circularContainer(
                                300, AppString.lightpurple)),
                        Positioned(
                            top: -100,
                            left: -45,
                            child: _circularContainer(
                                width * .5, AppString.darkpurple)),
                        Positioned(
                            top: -180,
                            right: -30,
                            child: _circularContainer(
                                width * .7, Colors.transparent,
                                borderColor: Colors.white38)),
                        Positioned(
                            top: 40,
                            left: 0,
                            child: Container(
                                width: width,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                        icon: Icon(
                                          Icons.arrow_back,
                                          size: 30,
                                        ),
                                        color: Colors.white,
                                        onPressed: () =>
                                            Navigator.pop(context)),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Registrasi",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900),
                                        ))
                                  ],
                                )))
                      ],
                    )),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          '',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      )
                    ],
                  ),
                  //SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: TextField(
                        controller: nama,
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                            hintText: "Nama",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Icon(
                                Icons.person,
                                color: Colors.cyan,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: TextField(
                        controller: email,

                        cursorColor: Colors.yellow,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Icon(Icons.email, color: Colors.cyan),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Material(
                      elevation: 2.0,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: TextField(
                        controller: noHp,

                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                            hintText: "Nomor Hp",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Icon(
                                Icons.phone,
                                color: Colors.cyan,
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: RaisedButton(
                      color: AppString.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 13, horizontal: 25),
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
                       onPressed: () async {
                            user = User(
                              email: email.text.trim(),
                              noHp: noHp.text.trim(),
                              nama: nama.text.trim(),
                            );
                            var resRegister = await Repository().register(user);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Verifikasi(
                                  resData: resRegister,
                                  resUser: user,
                                ),
                              ),
                            );
                          },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }
}
