import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Navigation_Screen.dart';
import 'package:flutter/material.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.grey[300],
              child: IconButton(
               
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationScreen())),
                icon: const Icon(
                  Icons.close,
                  color: const Color(0xFFFF8CE9),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.share,
                  color: const Color(0xFFFF8CE9),
                ),
              ),
            ),
            const SizedBox(width: 10)
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 130),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    iconSize: 140,
                    onPressed: () {},
                    icon: Icon(
                      Icons.qr_code_scanner,
                      color: const Color(0xFFFF8CE9),
                    )),
              ],
            ),
            const SizedBox(height: 25),
            const Text(
              'Tap To Scan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
