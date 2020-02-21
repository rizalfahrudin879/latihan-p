import 'package:flutter/material.dart';
import 'package:latihan/data/model/user.dart';
import 'package:latihan/data/repository/repository.dart';

class NewPassword extends StatefulWidget {
  final User userRes;
  NewPassword({this.userRes});

  @override
  _NewPasswordState createState() => _NewPasswordState(userRes);
}

class _NewPasswordState extends State<NewPassword> {
  User userRes;
  _NewPasswordState(this.userRes);
  var password1 = TextEditingController();
  var password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tes ganti pw")),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text('test page ganti passwor'),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  controller: password1,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: TextFormField(
                  onChanged: (v) {
                    if (password1.text == v) {
                      debugPrint("password tidak sama");
                    }
                  },
                  controller: password2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'konfirmasi password',
                  ),
                ),
              ),
            ),
            RaisedButton(
                child: Text('update password'),
                onPressed: () async {
                  print(widget.userRes.id);
                  print(widget.userRes.email);
                  print(password2.text);
                  var data = await Repository().updatePassword(
                      id: widget.userRes.id,
                      email: widget.userRes.email,
                      newPassword: password2.text);

                  print(userToJson(data));
                })
          ],
        ),
      ),
    );
  }
}
