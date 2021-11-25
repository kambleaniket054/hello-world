import 'dart:async';

import 'package:flutter/material.dart';
import 'package:organic_saga/loginpage.dart';

class splashscreen extends StatefulWidget {
  @override
  splashscreenstate createState() => splashscreenstate();
}

class splashscreenstate extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => loginpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                  color: Colors.green.shade600,
                  spreadRadius: 1 * 10,
                  blurRadius: 1.0,
                ),
              ]),
              child: Image.asset(
                "assets/500,500.png",
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
