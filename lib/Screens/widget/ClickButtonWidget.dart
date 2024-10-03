import 'package:flutter/material.dart';

class ClickButton extends StatelessWidget {
  const ClickButton(
      {super.key, required this.nextPage, required this.buttonText});

  final Widget nextPage;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => nextPage,
          ),
        );
      },
      // ignore: sort_child_properties_last
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 19 ,color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size.fromHeight(50),
        backgroundColor: const Color(0xFFFF8CE9),
      ),
    );
  }
}
