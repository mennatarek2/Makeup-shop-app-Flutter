import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Home_Screen.dart';
import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Login_SCreen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 34),
            Image.asset('assets/images/0b955b029c93ec4ab01b39e56b2b2bd4.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const CustomTextField(
                      lableText: 'Enter Name', preffixIcon: Icons.person),
                  const SizedBox(height: 10),
                  const CustomTextField(
                      lableText: 'Enter Email', preffixIcon: Icons.email),
                  const SizedBox(height: 10),
                  const CustomTextField(
                      lableText: 'Enter Number', preffixIcon: Icons.phone),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    lableText: 'Enter Password',
                    sufficsIcon: Icons.remove_red_eye,
                    preffixIcon: Icons.lock,
                    obscure: true,
                  ),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    lableText: 'Confirm Password',
                    sufficsIcon: Icons.remove_red_eye,
                    preffixIcon: Icons.lock,
                    obscure: true,
                  ),
                  const SizedBox(height: 30),
                  ClickButton(
                      nextPage: HomeScreen(), buttonText: 'Creat Account'),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have An Account ?",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ));
                          },
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xffDB3022)),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
