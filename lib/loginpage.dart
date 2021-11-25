import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/verificationpage.dart';

class loginpage extends StatefulWidget {
  @override
  loginpagestate createState() => loginpagestate();
}

class loginpagestate extends State<loginpage> {
  bool visible = true;
  TextEditingController _number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                visible
                    ? Container(
                        width: MediaQuery.of(context).size.width,
                        height: 250.0,
                        // color: Colors.amber,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                            "assets/fruites12.png",
                            cacheHeight: 290,
                          ),
                        ),
                      )
                    : new Container(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      visible != true
                          ? Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 0.0,
                                  left: 10.0,
                                  bottom: 50.0,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visible = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                              ),
                            )
                          : new Container(),
                      visible
                          ? Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 50,
                                  left: 20.0,
                                ),
                                child: Text(
                                  "Get your Organic Needs\n from Organic Saga",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            )
                          : new Container(),
                      visible != true
                          ? Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 20.0,
                                ),
                                child: Text(
                                  "Enter your mobile number",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 20,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            )
                          : new Container(),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: 300,
                        child: TextField(
                          controller: _number,
                          onTap: () {
                            setState(() {
                              visible = false;
                            });
                          },
                          keyboardType: TextInputType.phone,
                          maxLines: 1,
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            prefixIcon: Icon(
                              Icons.flag_rounded,
                              size: 25.0,
                            ),
                            prefixText: "+91",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      visible
                          ? Container(
                              child: Column(
                                children: [
                                  Text(
                                    "Or Connect with Social Media",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      onPressed: () {},
                                      color: Color(0xFF6989FC),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.g_mobiledata,
                                            size: 35,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Continue with Google",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      onPressed: () {},
                                      color: Color(0xff4A66AC),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.facebook_rounded,
                                            size: 24,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Continue with facebook",
                                            style: TextStyle(
                                              fontFamily: 'Roboto',
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : new Container(),
                      visible != true
                          ? Container(
                              padding: EdgeInsets.only(
                                top: 200,
                                right: 20.0,
                              ),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: FloatingActionButton(
                                  backgroundColor: Color(0xff0A5E2A),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                verificationpage(
                                                    _number.text)));
                                  },
                                  child: Icon(Icons.arrow_forward),
                                ),
                              ),
                            )
                          : new Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
