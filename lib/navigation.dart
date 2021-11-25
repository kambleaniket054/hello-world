import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:organic_saga/cart.dart';
import 'package:organic_saga/explore.dart';
import 'package:organic_saga/favourite.dart';
import 'package:organic_saga/profile.dart';
import 'package:organic_saga/profilepage1.dart';
import 'homepage.dart';
import 'package:organic_saga/verificationpage.dart';

class navigation extends StatefulWidget {
  @override
  navigationstate createState() => navigationstate();
}

class navigationstate extends State<navigation> {
  bool visible = true;
  int pageindex = 0;
  late PageController pg;

  List<Widget> tabpages = [
    homepage(),
    explore(),
    cart(),
    favourite(),
    profilepage1(),
  ];
  @override
  void initState() {
    pg = PageController(initialPage: pageindex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CupertinoColors.activeGreen.highContrastColor,
          unselectedItemColor: Colors.white70,
          selectedIconTheme: const IconThemeData(
            color: Color(0xff0A5E2A),
            size: 24.0,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.black54,
            size: 24.0,
          ),
          currentIndex: pageindex,
          onTap: (int index) {
            this.pg.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                // color: CupertinoColors.black,
              ),
              label: 'Home',
              tooltip: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.doc_text_search,
                //  color: CupertinoColors.black,
              ),
              label: 'Explore',
              tooltip: 'explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.cart,
                // color: CupertinoColors.black,
              ),
              label: 'Cart',
              tooltip: 'cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.square_favorites_alt,
                // color: CupertinoColors.black,
              ),
              label: 'Favoruite',
              tooltip: 'favoruite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                // color: CupertinoColors.black,
              ),
              label: 'Account',
              tooltip: 'account',
            )
          ]),
      body: PageView(
        children: tabpages,
        onPageChanged: (int page) {
          setState(() {
            this.pageindex = page;
          });
        },
        controller: pg,
      ),
    );
  }
}
