// import 'package:flutter/material.dart';

// class VerificationPage extends StatefulWidget{
//   @override
//   VerifiState createState()=> VerifiState();
// }
// class VerifiState extends State<VerificationPage>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Verification",style: TextStyle(fontWeight:FontWeight.w900),),
//       ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//             Container(
//                 child: Image.asset('assets/images/veri.png',height: 150,width: 200,),
//              ),
//              Container(
//               margin: EdgeInsets.only(left: 50,right: 50),
//                child: new TextField(
//              decoration: new InputDecoration(
//             border: new OutlineInputBorder(
//                 borderSide: new BorderSide(color: Colors.teal)
//             ),
//             helperText: 'Masukan Code Anda Dengan Benar',
//              ),
//              ),
//             ),
//             SizedBox(height: 20,),
//             Container(
//               width: 100,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(70)),
//                   color: Color(0xff1e88e5)),
//               child: FlatButton(
//                 child: Text(
//                   "Verify",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 18),
//                 ),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> null() ));
//                 },
//               ),
//             ),
//           ],
//           ),
//         ),
//     );
//   }
// }