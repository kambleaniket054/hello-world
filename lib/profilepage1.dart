import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/loginpage.dart';
import 'package:organic_saga/profile.dart';
import 'package:organic_saga/verificationpage.dart';

class profilepage1 extends StatefulWidget {
  @override
  profilepage1state createState() => profilepage1state();
}

class profilepage1state extends State<profilepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50.0),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    // color: Colors.amber,
                  ),
                  width: 290.0,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/500,500.png",
                        fit: BoxFit.contain,
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            Text(
                              "youremailid@gmail.com",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Column(
                  children: [
                    Divider(
                      height: 1.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.bag,
                            color: CupertinoColors.black,
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 150,
                            child: Text(
                              "Orders",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 60.0),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.person_crop_rectangle,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "My Details",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 85.0),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => profile()));
                            },
                            child: Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.activeGreen,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.location,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Delivery Address",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            CupertinoIcons.creditcard,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Payment methods",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(width: 60.0),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.tag,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Promo Card",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.bell,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Notification",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.exclamationmark_circle,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "About",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
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
                    SizedBox(height: 5.0),
                    Container(
                      padding: EdgeInsets.only(
                        top: 10.0,
                        bottom: 20.0,
                      ),
                      width: 290.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.question_circle,
                            color: CupertinoColors.black,
                          ),
                          Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Text(
                              "Help",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
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
                    SizedBox(height: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginpage()));
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
