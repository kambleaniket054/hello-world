import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/verificationpage.dart';

class profile extends StatefulWidget {
  @override
  profilestate createState() => profilestate();
}

class profilestate extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // color: Colors.amber,
              ),
              width: 150.0,
              height: 150,
              child: Image.asset(
                "assets/500,500.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Text(
                "Your Name",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    width: 290.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          CupertinoIcons.mail,
                          color: CupertinoColors.black,
                        ),
                        SizedBox(width: 30.0),
                        Text(
                          "youremail@gmail.com",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 60.0),
                        Icon(
                          CupertinoIcons.pencil,
                          color: CupertinoColors.activeGreen,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    width: 290.0,
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.phone,
                          color: CupertinoColors.black,
                        ),
                        SizedBox(width: 30.0),
                        Text(
                          "+91 987657423",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 100.0),
                        Icon(
                          CupertinoIcons.pencil,
                          color: CupertinoColors.activeGreen,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    width: 290.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          CupertinoIcons.lock,
                          color: CupertinoColors.black,
                        ),
                        SizedBox(width: 30.0),
                        Text(
                          "Change Password",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 85.0),
                        Icon(
                          CupertinoIcons.forward,
                          color: CupertinoColors.activeGreen,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(height: 120.0),
                  Container(
                    width: 290.0,
                    height: 50.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CupertinoColors.activeGreen.elevatedColor,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      // color: CupertinoColors.systemGrey2.withOpacity(0.5),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: CupertinoColors.systemGreen,
                        ),
                        SizedBox(width: 70.0),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
