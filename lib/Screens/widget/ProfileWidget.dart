import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), boxShadow: [
        BoxShadow(blurRadius: 1, color: Colors.black.withOpacity(0.05)),
      ]),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          Text(title,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
