import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/repository.dart';
import 'package:latihan/provider/aktivasi.dart';
import 'package:provider/provider.dart';

import 'new_passowrd.dart';

class Verifikasi extends StatefulWidget {
  final ResModel resData;
  final User resUser;
  Verifikasi({this.resData, this.resUser});
  @override
  _VerifikasiState createState() =>
      _VerifikasiState(resData: resData, resUser: resUser);
}

class _VerifikasiState extends State<Verifikasi> {
  ResModel resData;
  User resUser;
  _VerifikasiState({this.resData, this.resUser});
  var dataCompare = TextEditingController();
  var passwordBaru = TextEditingController();
  var conPasswordBaru = TextEditingController();
  bool page = false;
  User dataNew;
  final focus = FocusNode();
  final focus1 = FocusNode();
  final focus2 = FocusNode();
  final focus3 = FocusNode();
  final focus4 = FocusNode();
  final focus5 = FocusNode();

  @override
  void initState() {
    super.initState();
    dataCompare.text = resData.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Aktivasi',
            // style: TextStyle(color: AppString.extraDarkPurple),
          ),
          backgroundColor: Colors.white12,
          elevation: 0,
        ),
        body: ChangeNotifierProvider<Aktivasi>(
          create: (BuildContext context) => Aktivasi(),
          child: Container(
            color: Colors.white12,
            child: Column(
              children: <Widget>[
                Text(
                  "test sementara halaman fisrt login verifikasi",
                  style: TextStyle(fontSize: 18),
                ),
                Text('kode verif: ${resData.data}'),
                Text('email u: ${resUser.email}'),
                textInput()
              ],
            ),
          ),
        )
        // Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: <Widget>[
        //       Text("test halaman fisrt login verifikasi"),
        //       Text('kode verif: ${resData.data}'),
        //       Text('email u: ${resUser.email}'),
        //       Container(
        //           child: Icon(
        //         Icons.check,
        //         size: 40,
        //       )),
        //       Container(
        //         margin: EdgeInsets.only(left: 50, right: 50),
        //         child: new TextField(
        //           controller: dataCompare,
        //           decoration: new InputDecoration(
        //             border: new OutlineInputBorder(
        //                 borderSide: new BorderSide(color: Colors.teal)),
        //             helperText: 'Masukan Code Anda Dengan Benar',
        //           ),
        //         ),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       Container(
        //         width: 100,
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.all(Radius.circular(70)),
        //             color: Color(0xff1e88e5)),
        //         child: FlatButton(
        //           child: Text(
        //             "Verify",
        //             style: TextStyle(
        //                 color: Colors.white,
        //                 fontWeight: FontWeight.w700,
        //                 fontSize: 18),
        //           ),
        //           onPressed: () async {
        //             if (dataCompare.text == resData.data) {
        //               User dataAwait;
        //               dataAwait = await Repository().firstLogin(
        //                 email: resUser.email,
        //                 password: resData.data,
        //               );

        //               setState(() {
        //                 page = true;
        //                 dataNew = dataAwait;
        //               });
        //             } else {
        //               print('code salah');
        //             }
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        );
  }

  Widget textInput() {
    return Center(
      child: Consumer<Aktivasi>(
        builder: (BuildContext context, Aktivasi value, Widget child) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 15,
              child: TextField(
                
                focusNode: focus,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) {
                  value.input = v;
                  if (v.length == 1) {
                    FocusScope.of(context).requestFocus(focus1);
                  }
                },
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 15,
              child: TextField(
                focusNode: focus1,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) {
                  value.input1 = v;
                  if (v.length == 1) {
                    FocusScope.of(context).requestFocus(focus2);
                  } else if (v.length == 0) {
                    FocusScope.of(context).requestFocus(focus);
                  }
                },
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 15,
              child: TextField(
                focusNode: focus2,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) {
                  value.input2 = v;

                  if (v.length == 1) {
                    FocusScope.of(context).requestFocus(focus3);
                  } else if (v.length == 0) {
                    FocusScope.of(context).requestFocus(focus1);
                  }
                },
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 15,
              child: TextField(
                focusNode: focus3,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) {
                  value.input3 = v;

                  if (v.length == 1) {
                    FocusScope.of(context).requestFocus(focus4);
                  } else if (v.length == 0) {
                    FocusScope.of(context).requestFocus(focus2);
                  }
                },
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 15,
              child: TextField(
                focusNode: focus4,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) {
                  value.input4 = v;
                  if (v.length == 1) {
                    FocusScope.of(context).requestFocus(focus5);
                  } else if (v.length == 0) {
                    FocusScope.of(context).requestFocus(focus3);
                  }
                },
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 15,
              child: TextField(
                focusNode: focus5,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (v) async {
                  value.input5 = v;

                  if (v.length == 0) {
                    FocusScope.of(context).requestFocus(focus4);
                  }

                  if (resData.data == value.isValue) {
                    var dataAwait = await Repository().firstLogin(
                      email: resUser.email,
                      password: resData.data,
                    );
                    print(dataAwait.id + dataAwait.email);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewPassword(userRes: dataAwait)));
                  }
                },
              ),
            ),
            // Text(value.isValue),

            SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}
