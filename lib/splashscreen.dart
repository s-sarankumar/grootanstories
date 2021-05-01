import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grootstories/main.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
@override
State<StatefulWidget> createState() {
  return Firststate();
}
}

class Firststate extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('images/groot.jpg'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text("GROOT",style: TextStyle(color: Colors.brown,fontSize: 24,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              color: Colors.brown,
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
