import 'package:flutter/material.dart';
import 'package:latihan/ui/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoard extends StatefulWidget {
  final SharedPreferences prefs;
  OnBoard({this.prefs});

  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  var controlerView = PageController();
  int currentPageValue;
  List<Widget> introWidgetsList = <Widget>[
    Container(
      color: Colors.white,
      child: Text(
        '1',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      child: Text(
        '2',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      child: Text(
        '3',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
          color: isActive ? Colors.orange : Colors.grey,
          borderRadius: BorderRadius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              PageView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: introWidgetsList.length,
                onPageChanged: (int page) {
                  setState(() {
                    currentPageValue = page;
                  });
                },
                controller: controlerView,
                itemBuilder: (context, index) {
                  return Center(
                    child: introWidgetsList[index],
                  );
                },
              ),
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 35),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        for (int i = 0; i < introWidgetsList.length; i++)
                          if (i == currentPageValue) ...[circleBar(true)] else
                            circleBar(false),
                      ],
                    ),
                  )
                ],
              ),
              Visibility(
                visible: currentPageValue == introWidgetsList.length - 1
                    ? true
                    : false,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(12),
                  child: FloatingActionButton(
                    onPressed: () {
                      widget.prefs.setBool('seen', true);
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(26))),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
