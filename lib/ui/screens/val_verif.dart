import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormWidget extends StatelessWidget {
  final focus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
              autofocus: true,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Input 1"),
              onChanged: (v) {
                if (v.length == 1) {
                  FocusScope.of(context).requestFocus(focus);
                }
              },
            ),
            TextField(
              focusNode: focus,
              decoration: InputDecoration(labelText: "Input 2"),
            )

            // TextFormField(
            //   textInputAction: TextInputAction.next,
            //   autofocus: true,
            //   decoration: InputDecoration(labelText: "Input 1"),
            //   onFieldSubmitted: (v) {
            //     if (v.length == 2) {
            //       print(v.length);
            //       print(v.toString());
            //       FocusScope.of(context).requestFocus(focus);
            //     } else {
            //       print("2");
            //     }
            //   },
            // ),
            // TextFormField(
            //   focusNode: focus,
            //   decoration: InputDecoration(labelText: "Input 2"),
            // ),
          ],
        ),
      ),
    );
  }
}
