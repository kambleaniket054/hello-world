import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/productprofile.dart';
import 'package:organic_saga/trackorder.dart';
import 'package:organic_saga/verificationpage.dart';

class onsuccessorder extends StatefulWidget {
  @override
  onsuccessorderstate createState() => onsuccessorderstate();
}

class onsuccessorderstate extends State<onsuccessorder> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff0A5E2A),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff0A5E2A),
                    blurRadius: 1.0,
                    spreadRadius: 1 * 40,
                  ),
                ],
              ),
              child: Icon(
                Icons.done_rounded,
                color: Colors.white,
                size: 130.0,
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
            Container(
              width: 290.0,
              child: Column(
                children: [
                  Text(
                    "Your Order has been accepted",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Your item has been placed and is an it's way to beign processed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              width: 290.0,
              height: 60.0,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => trackorder()));
                },
                color: Color(0xff0A5E2A),
                child: Text(
                  "Track Order",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 290.0,
              height: 60.0,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => cart()));
                },
                // color: Color(0xff0A5E2A),
                child: Text(
                  "Back to Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0A5E2A),
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
