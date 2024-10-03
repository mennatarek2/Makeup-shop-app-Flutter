import 'package:e_commerce_app/Screens/Introduction%20Screens/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHEGLAM',
      theme: ThemeData(
        primaryColor: const Color(0xffDB3022),
      ),
      home: const SplachScreen(),
    );
  }
}
