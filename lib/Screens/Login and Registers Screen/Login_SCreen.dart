import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Forgot_Screen.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Navigation_Screen.dart';
import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/SignUp_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 64),
            Image.asset('assets/images/0b955b029c93ec4ab01b39e56b2b2bd4.jpg'),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const CustomTextField(
                      lableText: 'Enter Email', preffixIcon: Icons.person),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    lableText: 'Enter Password',
                    sufficsIcon: Icons.remove_red_eye,
                    preffixIcon: Icons.lock,
                    obscure: true,
                  ),
                  const SizedBox(height: 3),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgotScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Forgot Passwors?',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xffDB3022)),
                        )),
                  ),
                  const SizedBox(height: 40),
                  const ClickButton(
                      nextPage: NavigationScreen(), buttonText: 'Log In'),
                  const SizedBox(height: 14),
                  const Text("OR"),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't Have An Account ?",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ));
                          },
                          child: const Text(
                            'Sign Up',
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
