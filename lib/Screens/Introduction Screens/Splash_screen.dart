import 'dart:async';

import 'package:e_commerce_app/Screens/Introduction%20Screens/Onboarding_Screen.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    // ignore: prefer_const_constructors
    Timer(Duration(seconds: 8), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.black, //color of container
          image: DecorationImage(
              image: AssetImage('assets/images/f4f874842a9be9944016ffd7277eabaa.jpg'),
              fit: BoxFit.cover,
              opacity: 0.6),
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                size: 170,
                color: Color( 0xFFFF8CBC),
              ),
              Text(
                'SHEGLAM',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )
            ]),
      ),
    );
  }
}
