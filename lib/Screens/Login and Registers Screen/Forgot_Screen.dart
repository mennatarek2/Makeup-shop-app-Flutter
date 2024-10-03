import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Otp_Scree.dart';
import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Recovry_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            const Text(
              'Forgot Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            const Text(
              'please enter your email address below We will send you a link to reset your password.',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
           
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        emailController.clear();
                      });
                    },
                    child: Icon(
                      Icons.clear,
                      color: Colors.red,
                    ),
                  ),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14)),
                  labelText: "Email"),
            ),
            const SizedBox(height: 40),
            ClickButton(nextPage: RecvoryScreen(), buttonText: "Send Code"),
            SizedBox(height: 14),
            Align(alignment: Alignment.center, child: Text("OR")),
            const SizedBox(height: 7),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(),
                        ));
                  },
                  child: const Text(
                    'Verify Using Number',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xffDB3022)),
                  )),
            ])
          ],
        ),
      ),
    );
  }
}
