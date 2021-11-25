import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/fruites_items.dart';
import 'package:organic_saga/fruitsdata.dart';
import 'package:organic_saga/Ordercheckout.dart';
import 'package:organic_saga/explore.dart';
import 'package:organic_saga/fruites_items.dart';
import 'package:organic_saga/homepage.dart';
import 'package:organic_saga/verificationpage.dart';
import 'fruites_items.dart';

import 'fruitsdata.dart';

class cart extends StatefulWidget {
  @override
  cartstate createState() => cartstate();
}

class cartstate extends State<cart> {
  int num = 1;
  int num1 = 1;
  int num2 = 1;
  int num3 = 1;
  int num4 = 1;
  bool isvisible = true;
  bool isvisible1 = true;
  bool isvisible2 = true;
  bool isvisible3 = true;
  bool isvisible4 = true;
  final List<Fruits> fruits = List.from(productdata.fruits);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: CupertinoColors.white,
        elevation: 1.0,
        toolbarHeight: 50.0,
        // leading: IconButton(
        // onPressed:() {
//
        //        },
        //      icon: Icon(
        //      CupertinoIcons.back,
        //    color: Colors.black,
        // ),
        // splashRadius: 25.0,
        //),
        title: Text(
          "My Cart",
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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Ordercheckout()));
            },
            color: Color(0xff0A5E2A),
            child: Text(
              "Check Out",
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
                                  height: 20.0,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MaterialButton(
                                        minWidth: 5.0,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            fruits[index].count--;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.minus,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        '${fruits[index].count}',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      MaterialButton(
                                        minWidth: 5.0,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            fruits[index].count++;
                                          });
                                        },
                                        child: Icon(
                                          CupertinoIcons.add,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                Text(
                                  '₹ ${fruits[index].price * fruits[index].count}',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                );
              })),
    );
  }
}
