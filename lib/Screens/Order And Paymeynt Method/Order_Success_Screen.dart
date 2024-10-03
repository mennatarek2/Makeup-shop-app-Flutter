import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Navigation_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:flutter/material.dart';

class OrderSuccessScreen extends StatelessWidget {
  const OrderSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/succsess.png',
              height: 300,
              width: double.infinity,
            ),
            Text(
              'Success!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Your order will be delivered soon',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            Text('Thank You for chosing our app',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            SizedBox(height: 60),
            ClickButton(
                nextPage: NavigationScreen(), buttonText: 'Continue Shopping')
          ],
        ),
      )),
    );
  }
}
