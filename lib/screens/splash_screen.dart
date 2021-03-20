import 'dart:async';

import 'package:flutter/material.dart';
import 'home_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7), ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder:
            (context) => dashboard()
        )
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/flag/plaine1.jpg"),
              height: 250.0,
              width: 250.0,
            ),
            Text("ASK",
              style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: LinearProgressIndicator(
                minHeight: 10,
                backgroundColor: Colors.blue[800],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}