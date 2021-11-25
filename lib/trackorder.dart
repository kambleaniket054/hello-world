import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/productprofile.dart';
import 'package:organic_saga/verificationpage.dart';

class trackorder extends StatefulWidget {
  @override
  trackorderstate createState() => trackorderstate();
}

class trackorderstate extends State<trackorder> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 290.0,
              padding: EdgeInsets.only(
                right: 50.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Ref.Id: 2345678909876543",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Your item has been placed and is on it's way",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.only(
                right: 20.0,
              ),
              width: 290.0,
              height: 60.0,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {},
                color: Color(0xff0A5E2A),
                child: Text(
                  "Arriving at 12.45Pm on Monday",
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
            Stepper(
              steps: getsteps(),
              type: StepperType.vertical,
              controlsBuilder: (BuildContext,
                  {void Function()? onStepCancel,
                  void Function()? onStepContinue}) {
                return Row(
                  children: [
                    Container(
                      child: null,
                    ),
                    Container(
                      child: null,
                    ),
                  ],
                );
              },
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shiping Address",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "Will Smith\n28/38,sannathi street,\nVillvakkam\nChennai, Tamil Nadu 600049",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Step> getsteps() => [
        Step(
          isActive: true,
          title: Text('Orderes'),
          state: StepState.complete,
          content: Container(
            child: null,
          ),
        ),
        Step(
          isActive: true,
          state: StepState.complete,
          title: Text('Shipped'),
          content: Container(
            child: null,
          ),
        ),
        Step(
          title: Text('Out For Delivery'),
          content: Container(
            child: null,
          ),
        ),
        Step(
          title: Text('Arriving'),
          content: Container(
            child: null,
          ),
        ),
      ];
}
