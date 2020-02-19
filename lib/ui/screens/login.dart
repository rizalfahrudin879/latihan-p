import 'package:flutter/material.dart';
import 'package:latihan/form_validate_provider.dart';
import 'package:latihan/ui/screens/singup.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FormValidate>(
      create: (context) => FormValidate(),
      child: Scaffold(
        body: SingleChildScrollView(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.width / 2.5),
          child: Form(
            child: Container(
              // padding: EdgeInsets.all(MediaQuery.of(context).size.width / 8),
              padding: EdgeInsets.all(25),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start, ///
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      Text(
                        'Please sign in to continue',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(height: 50),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Consumer<FormValidate>(
                            builder: (context, valide, child) => TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  Icons.email,
                                ),
                                hintText: 'EMAIL',
                                labelText: 'EMAIL',
                              ),
                              onChanged: (value) {
                                valide.emailLogin = value;
                              },
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
                          child: Consumer<FormValidate>(
                            builder: (context, valide, child) => TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.lock),
                                hintText: 'PASSWORD',
                                labelText: 'PASSWORD',
                              ),
                              onChanged: (value) {
                                valide.passwordLogin = value;
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Consumer<FormValidate>(
                            builder: (context, validate, child) => RaisedButton(
                              //Color(0xFFf7be53),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0)),
                              padding: const EdgeInsets.all(0.0),
                              child: AnimatedContainer(
                                decoration: BoxDecoration(
                                  gradient: (validate.isValide)
                                      ? null
                                      : LinearGradient(
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
                                      'Login',
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
                                duration: Duration(milliseconds: 100),
                              ),
                              onPressed: () {
                                (validate.isValide)
                                    ? debugPrint('kosong')
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => null));
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width / 2),
                  FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Dont have account?',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            )),
                        Text('SignUp',
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange))
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SingUpPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
