// import 'package:flutter/material.dart';
// import 'package:latihan/ui/screens/dar.dart';
// o


// class Login_page extends StatefulWidget {
//   static final String path = "lib/src/pages/login/login7.dart";
//   @override
//   _LoginSevenPageState createState() => _LoginSevenPageState();
// }

// class _LoginSevenPageState extends State<Login_page> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ListView(
//         children: <Widget>[
//           Stack(
//             children: <Widget>[
//               ClipPath(
//                 clipper: WaveClipper2(),
//                 child: Container(
//                   child: Column(),
//                   width: double.infinity,
//                   height: 300,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Color(0xffffe0b2), Color(0xffff5722)])),
//                 ),
//               ),
//               ClipPath(
//                 clipper: WaveClipper3(),
//                 child: Container(
//                   child: Column(),
//                   width: double.infinity,
//                   height: 300,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Color(0xffffe0b2), Color(0xffffa726)])),
//                 ),
//               ),
//               ClipPath(
//                 clipper: WaveClipper1(),
//                 child: Container(
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Icon(
//                         Icons.local_laundry_service,
//                         color: Colors.white,
//                         size: 60,
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         "Londriku",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w700,
//                             fontSize: 30),
//                       ),
//                     ],
//                   ),
//                   width: double.infinity,
//                   height: 300,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Color(0xffffa726), Color(0xffff5722),Color(0xffff3d00)])),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Material(
//               elevation: 2.0,
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               child: TextField(

//                 cursorColor: Colors.deepOrange,
//                 decoration: InputDecoration(
//                     hintText: "Email",
//                     prefixIcon: Material(
//                       elevation: 0,
//                       borderRadius: BorderRadius.all(Radius.circular(30)),
//                       child: Icon(
//                         Icons.email,
//                         color: Colors.orangeAccent,
//                       ),
//                     ),
//                     border: InputBorder.none,
//                     contentPadding:
//                     EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 32),
//             child: Material(
//               elevation: 2.0,
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               child: TextField(
//                 cursorColor: Colors.deepOrange,
//                 decoration: InputDecoration(
//                     hintText: "Password",
//                     prefixIcon: Material(
//                       elevation: 0,
//                       borderRadius: BorderRadius.all(Radius.circular(30)),
//                       child: Icon(
//                         Icons.lock,
//                         color: Colors.orangeAccent,
//                       ),
//                     ),
//                     border: InputBorder.none,
//                     contentPadding:
//                     EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 25,
//           ),
//           Padding(
//               padding: EdgeInsets.symmetric(horizontal: 32),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(100)),
//                     color: Color(0xff1e88e5)),
//                 child: FlatButton(
//                   child: Text(
//                     "Login",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 18),
//                   ),
//                   onPressed: () {
//                     // Navigator.push(context, MaterialPageRoute(builder: (context)=> NavPage() ));
//                   },
//                 ),
//               )),
//           SizedBox(height: 20,),
//           Center(
//             child: Text("FORGOT PASSWORD ?", style: TextStyle(color:Colors.deepOrange,fontSize: 12 ,fontWeight: FontWeight.w700),),
//           ),
//           SizedBox(height: 40,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("Don't have an Account ? ", style: TextStyle(color:Colors.black,fontSize: 14 ,fontWeight: FontWeight.normal),),
//               Container(
//                   child: GestureDetector(
//                       child: Text(
//                           "Sign Up ",
//                           style: TextStyle(
//                               color:Colors.lightBlueAccent,
//                               fontWeight: FontWeight.w500,
//                               fontSize: 18, decoration: TextDecoration.underline,
//                           ),
//                       ),
//                     onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> SingUpPage() ));
//                     },
//                   ),
//               ),

//             ],
//           )
//         ],
//       ),
//     );
//   }
// }