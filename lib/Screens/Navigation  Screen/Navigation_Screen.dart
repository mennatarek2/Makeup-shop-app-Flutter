import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Cart_Screen.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Favourite_Screen.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Home_Screen.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Profile_Screen.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Qr_Code_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavouritScreen(),
    PorfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
          child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QrCodeScreen()));
        },
        child: Icon(Icons.qr_code),
        backgroundColor: Color(0xFFFF8CE9),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled
        ],
        inactiveColor: Colors.black.withOpacity(0.5),
        activeColor: Color(0xFFFF8CE9),
        gapLocation: GapLocation.center,
        activeIndex: pageIndex,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
      ),
    );
  }
}
