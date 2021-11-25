import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:organic_saga/detailspage.dart';
import 'package:organic_saga/emaillogin.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'homepage.dart';
import 'fruitsdata.dart';

class verificationpage extends StatefulWidget {
  String text;
  verificationpage(this.text);

  @override
  verificationpagestate createState() => verificationpagestate(this.text);
}

class verificationpagestate extends State<verificationpage> {
  String number;
  verificationpagestate(this.number);
  String code = '';
  final FirebaseAuth auth = FirebaseAuth.instance;
  String verificationId = '';
  late final User user;
  bool valid = false;
  String smsCode = '';

  @override
  void initState() {
    listencode();
    phonemethod(number);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(
                top: 20.0,
                left: 20.0,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Color(0xff0A5E2A),
                  ),
                ),
              )),
          // Text(
          // "$number",
          // style: TextStyle(
          //  fontFamily: 'Roboto',
          // fontSize: 20.0,
          // fontStyle: FontStyle.normal,
          // fontWeight: FontWeight.w700,
          //),
          //),
          Container(
            // color: Colors.amber,
            padding: EdgeInsets.only(
              top: 20.0,
            ),
            width: 250.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Verification",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 240.0,
            child: PinFieldAutoFill(
              codeLength: 6,
              currentCode: '',
              onCodeChanged: (code) async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: verificationId, smsCode: smsCode);
                await auth.signInWithCredential(credential);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 230.0,
            ),
            child: Text(
              "Resend code",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12.0,
                color: Colors.blue.shade500,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 200,
              right: 20.0,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Color(0xff0A5E2A),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => detailspage()));
                },
                child: Icon(Icons.arrow_forward),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Future<Void> phoneauth(String number) async {
    print("success");
    await auth.verifyPhoneNumber(
        phoneNumber: '+91$number',
        timeout: Duration(seconds: 30),
        verificationCompleted: (AuthCredential ac) async {
          user = (await auth.signInWithCredential(ac)).user!;
          print("success");
          if (user != null) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => detailspage()));
          } else {
            print("error");
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e);
        },
        codeSent: (String verificatoinId, [int? forceResendingToken]) async {
          print("opt obtained successfully....!");
          String smsCode = code.trim();
          print(code);
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
              verificationId: verificationId, smsCode: smsCode);
          await auth.signInWithCredential(credential);
          print(code);
          user = (await auth.signInWithCredential(credential)).user!;
          if (user != null) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => detailspage()));
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          return null;
        });
    throw Exception();
  }

  Future<void> listencode() async {
    await SmsAutoFill().listenForCode;
  }

  void phonemethod(String number) async {
    await phoneauth(number);
  }
}
