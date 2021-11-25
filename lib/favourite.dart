import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/fruites_items.dart';
import 'package:organic_saga/fruitsdata.dart';
import 'package:organic_saga/Ordercheckout.dart';
import 'package:organic_saga/explore.dart';
import 'package:organic_saga/fruites_items.dart';
import 'package:organic_saga/homepage.dart';
import 'package:organic_saga/productprofile.dart';
import 'package:organic_saga/verificationpage.dart';
import 'fruites_items.dart';

import 'fruitsdata.dart';

class favourite extends StatefulWidget {
  @override
  favouritestate createState() => favouritestate();
}

class favouritestate extends State<favourite> {
  final List<Fruits> fruits = List.from(productdata.fruits);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CupertinoColors.white,
        elevation: 1.0,
        toolbarHeight: 50.0,
        title: Text(
          "Favorurite",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => cart()));
            },
            color: Color(0xff0A5E2A),
            child: Text(
              "Add All to Cart",
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
          child: ListView.builder(
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                int count1 = 1;
                return Container(
                  width: 350,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            '${fruits[index].url}',
                            fit: BoxFit.fill,
                            width: 80.0,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 20.0,
                              bottom: 20.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${fruits[index].name}',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "${fruits[index].pieces}",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '₹ ${fruits[index].price * fruits[index].count}',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            height: 150,
                            //color: Colors.blue,
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      fruits.removeAt(index);
                                    });
                                  },
                                  child: Icon(
                                    CupertinoIcons.clear,
                                    color: Colors.black.withOpacity(0.5),
                                    size: 18,
                                  ),
                                ),
                                Container(
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  productprofile()));
                                    },
                                    icon: Icon(
                                      CupertinoIcons.forward,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
