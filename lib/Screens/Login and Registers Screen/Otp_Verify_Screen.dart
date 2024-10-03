import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Recovry_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/OtpWidget.dart';
import 'package:flutter/material.dart';

class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Enter Otp',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 70),
              Text(
                  'please enter the Otp code We have sent to your Number, plese check your number and enter here otp to verify'),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpWidget(),
                  OtpWidget(),
                  OtpWidget(),
                  OtpWidget(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ClickButton(nextPage: RecvoryScreen(), buttonText: 'Verify')
            ],
          ),
        ),
      ),
    );
  }
}
