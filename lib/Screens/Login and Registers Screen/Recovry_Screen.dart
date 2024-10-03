import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Login_SCreen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class RecvoryScreen extends StatelessWidget {
  const RecvoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            CustomTextField(lableText: 'Reset Code', preffixIcon: Icons.code,obscure: false),
            SizedBox(height: 10),
            CustomTextField(
              lableText: 'New Password',
              sufficsIcon: Icons.remove_red_eye,
              preffixIcon: Icons.lock,
              obscure: true,
            ),
            SizedBox(height: 10),
            CustomTextField(
              lableText: 'Confirm Password',
              sufficsIcon: Icons.remove_red_eye,
              preffixIcon: Icons.lock,
              obscure: true,
            ),
            SizedBox(height: 40),
            ClickButton(nextPage: LoginScreen(), buttonText: 'Reset Password')
          ],
        ),
      ),
    );
  }
}
