import 'package:flutter/material.dart';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/repository.dart';
import 'package:latihan/ui/screens/verifikasi.dart';

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
      appBar: AppBar(backgroundColor: Colors.white12, elevation: 0),
      body: Container(
        color: Colors.white12,
        child: Form(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Create Your Account',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.redAccent),
                    ),
                    SizedBox(height: 30),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 25),
                        child: TextFormField(
                          controller: nama,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nama',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: TextFormField(
                          controller: noHp,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Nomor HP',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
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
                                colors: <Color>[Colors.pink, Colors.redAccent],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 13, horizontal: 25),
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
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              // FlatButton(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       Text(
              //         'Dont have account?',
              //         style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.grey,
              //         ),
              //       ),
              //       Text('Sign In',
              //           style: TextStyle(fontSize: 20, color: Colors.orange))
              //     ],
              //   ),
              //   onPressed: () {
              //     print(user.toJson());
              //     print(res.toJson());
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
