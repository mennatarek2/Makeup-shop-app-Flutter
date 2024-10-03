// ignore_for_file: prefer_const_declarations

import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Login_SCreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageDecoration = const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 18),
        pageColor: Colors.white,
        imagePadding: EdgeInsets.only(top: 10));
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body:
              "Shop now and unlock exclusive savings on top-quality items! From fashion to electronics, find everything you need at discounted prices",
          image: Image.asset('assets/images/shopping_bags11.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: " Big Discount",
          body:
              "Discover amazing deals on a wide range of products! Shop your favorites at unbeatable prices and enjoy the convenience of fast",
          image: Image.asset('assets/images/undraw_Gifts3333.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free Delivery",
          body:
              "ُEnjoy the convenience of free delivery on every order! No hidden fees, no minimum purchase—just fast, reliable shipping straight to your doorstep",
          image: Image.asset('assets/images/Successful333.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "Start Shopping",
            body: "ُReady to start shopping?",
            image: Image.asset('assets/images/undraw_Woman222.png'),
            decoration: pageDecoration,
            footer: Padding(
              padding: const EdgeInsets.only(top: 65.0, right: 15, left: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: const Color(0xFFFF8CE9),
                ),
                child: const Text(
                  "Lets's Shop",
                  style: TextStyle(fontSize: 20 , color: Colors.white),
                ),
              ),
            ))
      ],
      showDoneButton: false,
      showSkipButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(color: Color(0xFFFF8CE9), fontWeight: FontWeight.w600),
      ),
      next: const Text(
        'Next',
        style: TextStyle(color: Color(0xFFFF8CE9), fontWeight: FontWeight.w600),
      ),
      //if u add {skip or done}to desing u should use
      // onSkip: () => Navigator.push(context, route),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(15, 10),
        activeColor: const Color(0xFFFF8CE9),
        color: Colors.black54,
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
    );
  }
}
