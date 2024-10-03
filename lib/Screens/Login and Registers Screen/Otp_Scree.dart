import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Otp_Verify_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Forgot Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Text(
                  'please enter your Number We will send you a Otp to reset your password'),
              SizedBox(height: 20),
              CustomTextField(
                  lableText: 'Enter Number', preffixIcon: Icons.phone),
              SizedBox(height: 40),
              ClickButton(nextPage: OtpVerifyScreen(), buttonText: 'Send Code')
            ],
          ),
        ),
      ),
    );
  }
}
