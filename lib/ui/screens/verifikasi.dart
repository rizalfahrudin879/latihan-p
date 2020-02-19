import 'package:flutter/material.dart';
import 'package:latihan/data/model/register_result.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/repository.dart';

class Verifikasi extends StatefulWidget {
  final ResModel resData;
  final User resUser;
  Verifikasi({this.resData, this.resUser});
  @override
  _VerifikasiState createState() => _VerifikasiState(resData: resData);
}

class _VerifikasiState extends State<Verifikasi> {
  ResModel resData;
  _VerifikasiState({this.resData});
  var dataCompare = TextEditingController();
  var passwordBaru = TextEditingController();
  var conPasswordBaru = TextEditingController();
  bool page = false;
  User dataNew;

  @override
  void initState() {
    super.initState();
    dataCompare.text = resData.data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('verifikasi'),
      ),
      body: page
          ? Center(
              child: Column(children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 25),
                  child: TextFormField(
                    controller: passwordBaru,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                child: Container(
                  padding: EdgeInsets.only(left: 25),
                  child: TextFormField(
                    controller: conPasswordBaru,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Konfirmasi password baru',
                    ),
                  ),
                ),
              ),
              RaisedButton(
                  child: Text('tes'),
                  onPressed: () {
                    setState(() {
                      // page = false;
                      Repository().updatePassword(
                          id: dataNew.id,
                          email: dataNew.email,
                          newPassword: conPasswordBaru.text);
                    });
                  })
            ]))
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("test halaman fisrt login verifikasi"),
                Text('kode verif: ${widget.resData.data}'),
                Text('email u: ${widget.resUser.email}'),
                Container(
                    child: Icon(
                  Icons.check,
                  size: 40,
                )),
                Container(
                  margin: EdgeInsets.only(left: 50, right: 50),
                  child: new TextField(
                    controller: dataCompare,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      helperText: 'Masukan Code Anda Dengan Benar',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(70)),
                      color: Color(0xff1e88e5)),
                  child: FlatButton(
                    child: Text(
                      "Verify",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    onPressed: () async {
                      if (dataCompare.text == widget.resData.data) {
                        User dataAwait;
                        dataAwait = await Repository().firstLogin(
                          email: widget.resUser.email,
                          password: widget.resData.data,
                        );

                        setState(() {
                          page = true;
                          dataNew = dataAwait;
                        });
                      } else {
                        print('code salah');
                      }
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
