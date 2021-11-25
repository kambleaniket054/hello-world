import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/emaillogin.dart';
import 'package:organic_saga/verificationpage.dart';

class registrationpage extends StatefulWidget {
  @override
  registrationpagestate createState() => registrationpagestate();
}

class registrationpagestate extends State<registrationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180.0,
                  child: Image.asset(
                    "assets/500,500.png",
                    width: 150.0,
                    height: 150.0,
                    // fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      " Enter your Credentials to continue",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 300,
                  child: TextField(
                    // controller: _number,
                    keyboardType: TextInputType.name,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff0A5E2A),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 300,
                  child: TextField(
                    // controller: _number,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: 'Email address',
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Color(0xff0A5E2A),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 300,
                  child: TextField(
                    // controller: _number,
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Color(0xff0A5E2A),
                          size: 30.0,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_rounded,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 290.0,
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    "By continuing you agree to our Terms of Services and Privacy Policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
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
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //  builder: (BuildContext context) => emaillogin()));
                    },
                    color: Color(0xff0A5E2A),
                    child: Text(
                      "Register",
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
                  //    color: Colors.blue,
                  width: 290.0,
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Don't have Account / ",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => emaillogin()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blue.shade500,
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
