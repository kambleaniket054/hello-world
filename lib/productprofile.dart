import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/Ordercheckout.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/navigation.dart';
import 'package:organic_saga/verificationpage.dart';

class productprofile extends StatefulWidget {
  @override
  productprofilestate createState() => productprofilestate();
}

class productprofilestate extends State<productprofile> {
  bool ispress = false;
  bool visiable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: CupertinoColors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.share_up,
              color: CupertinoColors.black,
            ),
          ),
        ],
      ),
      persistentFooterButtons: [
        Container(
          padding: EdgeInsets.only(
            right: 50.0,
          ),
          width: 290.0,
          height: 60.0,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (BuildContext context) => cart()));
            },
            color: Color(0xff0A5E2A),
            child: Text(
              "Add to Cart",
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
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 350,
                height: 350,
                // color: Colors.amber,
                padding: EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Image.network(
                  "https://media.istockphoto.com/photos/perfect-red-apple-with-green-leaf-on-white-background-picture-id996100390?k=20&m=996100390&s=170667a&w=0&h=ytModGpW5qWNNcRHvtHt-41C-mBv6BnBc8u-olzz2oU=",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Natural Red apple",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  "1kg Price",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 15,
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  ispress = true;
                                });
                              },
                              icon: (ispress != false)
                                  ? Icon(
                                      CupertinoIcons.suit_heart_fill,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      CupertinoIcons.suit_heart,
                                      color: Colors.black,
                                    )),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          right: 10.0,
                          bottom: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              //  color: Colors.amber,
                              width: 250,
                              child: Row(
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      color: CupertinoColors.black,
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 15,
                                      color: CupertinoColors.black,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      CupertinoIcons.add,
                                      color: CupertinoColors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "250",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: CupertinoColors.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 15.0,
                        ),
                        //color: Colors.amber,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product Details",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                IconButton(
                                  tooltip: 'scrolled Down',
                                  onPressed: () {
                                    setState(() {
                                      visiable = true;
                                    });
                                  },
                                  icon: Icon(
                                    CupertinoIcons.chevron_down,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            visiable != false
                                ? Container(
                                    child: Text(
                                      "dandadnoinadnadadinaoddnadadnad wadlaa dmamimi emawdmalke scelmalmlsc sneelkaklc ckmalmacmac ackmaclkmaclklmaclkac aclkackmac ackmckmlkm asckmac kcacmlamlmc ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          wordSpacing: 0.3,
                                          letterSpacing: 0.1,
                                          height: 1.0,
                                          fontFamily: 'Roboto',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  )
                                : new Container(),
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: CupertinoColors.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nutrotions",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Card(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 5.0),
                                    child: Text("100g"),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.forward,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: CupertinoColors.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Review",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: CupertinoColors.black,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 10.0),
                              //   color: Colors.blue,
                              child: Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.orangeAccent,
                                    size: 15,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.orangeAccent,
                                    size: 15,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.orangeAccent,
                                    size: 15,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Colors.orangeAccent,
                                    size: 15,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_lefthalf_fill,
                                    color: Colors.orangeAccent,
                                    size: 15,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        height: 2.0,
                        color: CupertinoColors.black.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
