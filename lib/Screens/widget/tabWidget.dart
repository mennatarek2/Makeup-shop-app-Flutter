import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.tab,
  });
  final String tab;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 40,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12.withOpacity(0.05)),
        child: Center(
          child: Text(
            tab,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
        ),
      ),
    );
  }
}
