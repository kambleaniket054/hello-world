import 'package:flutter/material.dart';
import 'package:organic_saga/homepage.dart';
import 'package:organic_saga/splashscreen.dart';
import 'loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'emaillogin.dart';

class detailspage extends StatefulWidget {
  @override
  detailspagestate createState() => detailspagestate();
}

class detailspagestate extends State<detailspage> {
  List items = ['select', 'Mumbai', 'Delhi', 'Pune', 'Thane'];

  // ignore: non_constant_identifier_names
  late String Valuechoose;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 180.0,
              child: Image.asset(
                "assets/500,500.png",
                width: 150.0,
                height: 150.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                "Select Your Location",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 290,
              child: Text(
                "Switch on your location to stay in tune with what's happing in your area. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 230,
              ),
              child: Text(
                "Your Zone",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 290,
              height: 60.0,
              child: DropDown(
                dropDownType: DropDownType.Button,
                items: ["Mumbai", "Delhi", "Pune", "Thane"],
                hint: Text(
                    'select                                               '),
                onChanged: print,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 230,
              ),
              child: Text(
                "Your Area",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.0,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 290,
              height: 60.0,
              child: DropDown(
                dropDownType: DropDownType.Button,
                items: ["Anbheri", "Borivali", "Virar", "Vasai"],
                hint: Text(
                    'select                                               '),
                onChanged: print,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 290.0,
              height: 60.0,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => emaillogin()));
                },
                color: Color(0xff0A5E2A),
                child: Text(
                  "Submit",
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
        )),
      ),
    );
  }
}
