import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/productprofile.dart';
import 'package:organic_saga/verificationpage.dart';

class onfailorder extends StatefulWidget {
  @override
  onfailorderstate createState() => onfailorderstate();
}

class onfailorderstate extends State<onfailorder> {
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
                color: Colors.red.shade900,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red.shade900,
                    blurRadius: 1.0,
                    spreadRadius: 1 * 5,
                  ),
                ],
              ),
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.white,
                size: 200.0,
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
                    "Your Order has been fail",
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
                    "Something went wrong",
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
              height: 20.0,
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
                color: Color(0xff0A5E2A),
                child: Text(
                  "Try Again",
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
          ],
        ),
      ),
    );
  }
}
