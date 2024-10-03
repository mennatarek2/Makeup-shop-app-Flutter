import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lableText,
    required this.preffixIcon,
    this.sufficsIcon,
    this.obscure=false,
  });
  final String lableText;
  final IconData preffixIcon;
  final IconData? sufficsIcon;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
          labelText: lableText,
          prefixIcon: Icon(preffixIcon),
          suffixIcon: Icon(sufficsIcon),
        ));
  }
}
