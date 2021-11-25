import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/productprofile.dart';
import 'package:organic_saga/verificationpage.dart';

class homepage extends StatefulWidget {
  @override
  homepagestate createState() => homepagestate();
}

class homepagestate extends State<homepage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 00.0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: Image.asset(
                  "assets/500,500.png",
                  width: 50.0,
                  height: 50.0,
                  // fit: BoxFit.contain,
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                    top: 0.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.location,
                        color: CupertinoColors.black,
                        size: 24.0,
                      ),
                      Text(
                        "EverShine City,Vasai",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 20.0),
              Card(
                borderOnForeground: true,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: 'search',
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: CupertinoColors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                width: 290.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Image.network(
                  "https://www.giftstokolkata.com/image/fresh-fruits-banner.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 340,
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "See All  >",
                        style: TextStyle(
                          color: CupertinoColors.activeGreen,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => productprofile()));
                        },
                        child: Column(
                          children: [
                            Image.network(
                                "https://media.istockphoto.com/photos/perfect-red-apple-with-green-leaf-on-white-background-picture-id996100390?k=20&m=996100390&s=170667a&w=0&h=ytModGpW5qWNNcRHvtHt-41C-mBv6BnBc8u-olzz2oU="),
                            Text(
                              "Oragnic Bananas",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "7pcs, Price",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                MaterialButton(
                                  // color: Color(0xff0A5E2A),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => cart()));
                                  },
                                  height: 40.0,
                                  minWidth: 5.0,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xff0A5E2A),
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Color(0xff0A5E2A),
                                    size: 15.0,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Column(
                        children: [
                          Image.network(
                              "https://www.ahimsaoils.com.au/pi/OrangeEssentialOil%2CBitter@PORAB.jpg"),
                          Text(
                            "Oragnic Bananas",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "7pcs, Price",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              MaterialButton(
                                //color: Color(0xff0A5E2A),
                                onPressed: () {},
                                height: 40.0,
                                minWidth: 10.0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff0A5E2A),
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.add,
                                  color: Color(0xff0A5E2A),
                                  size: 15.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 340,
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Seller",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "See All  >",
                        style: TextStyle(
                          color: CupertinoColors.activeGreen,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => productprofile()));
                        },
                        child: Column(
                          children: [
                            Image.network(
                                "https://media.istockphoto.com/photos/mango-picture-id467328250?k=20&m=467328250&s=612x612&w=0&h=b21g4jLnkNRkcOX84X_Vn-z1gHnLW1n3RXK8bKV692s="),
                            Text(
                              "Oragnic Bananas",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "7pcs, Price",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                MaterialButton(
                                  // color: Color(0xff0A5E2A),
                                  onPressed: () {},
                                  height: 40.0,
                                  minWidth: 5.0,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Color(0xff0A5E2A),
                                      width: 1.0,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Icon(
                                    CupertinoIcons.add,
                                    color: Color(0xff0A5E2A),
                                    size: 15.0,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            "https://media.istockphoto.com/photos/kiwi-isolated-picture-id184991186?k=20&m=184991186&s=612x612&w=0&h=CnoMf2_Pn6BpUVGeslvMisnZ8fwCaK_N3JvaRuMS91I=",
                            height: 130,
                          ),
                          Text(
                            "Oragnic Bananas",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "7pcs, Price",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                ),
                              ),
                              SizedBox(
                                width: 30.0,
                              ),
                              MaterialButton(
                                // color: Color(0xff0A5E2A),
                                onPressed: () {},
                                height: 40.0,
                                minWidth: 10.0,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xff0A5E2A),
                                    width: 1.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Icon(
                                  CupertinoIcons.add,
                                  color: Color(0xff0A5E2A),
                                  size: 15.0,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                width: 340,
                padding: EdgeInsets.all(
                  10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Groceries",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "See All  >",
                        style: TextStyle(
                          color: CupertinoColors.activeGreen,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      // width: 150,
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF8A44C).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                        // border: Border.all(color: Colors.black26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/500,500.png",
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pulses",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      // width: 150,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff53B175).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                        // border: Border.all(color: Colors.black26),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/500,500.png",
                            fit: BoxFit.contain,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pulses",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
