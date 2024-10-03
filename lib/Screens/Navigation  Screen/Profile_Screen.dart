import 'package:e_commerce_app/Screens/Login%20and%20Registers%20Screen/Login_SCreen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/ProfileWidget.dart';
import 'package:flutter/material.dart';

class PorfileScreen extends StatelessWidget {
  const PorfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xFFFF8CE9),
        elevation: 0,
        title: const Text('Profile'),
        actions: [
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.notifications),
          const SizedBox(width: 10),
        ],
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              CircleAvatar(
                radius: 59.5,
                backgroundColor: Color(0xFFFF8CE9),
                child: CircleAvatar(
                    radius: 58,
                    backgroundImage:
                        ExactAssetImage('assets/images/profile.png')),
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Menna Tarek ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.verified,
                    color: Color(0xFF1FA0FF),
                  )
                ],
              ),
              SizedBox(height: 2),
              Text(
                'mennatarek209@gmail.com',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 27),
              ProfileWidget(icon: Icons.person, title: 'My Profile'),
              SizedBox(height: 25),
              ProfileWidget(
                icon: Icons.settings,
                title: 'Setting',
              ),
              SizedBox(height: 20),
              ProfileWidget(
                icon: Icons.notifications,
                title: 'Notifications',
              ),
              SizedBox(height: 20),
              ProfileWidget(
                icon: Icons.chat,
                title: 'FAQs',
              ),
              SizedBox(height: 20),
              ProfileWidget(
                icon: Icons.share,
                title: 'Share',
              ),
              SizedBox(height: 25),
              ClickButton(nextPage: LoginScreen(), buttonText: 'Log Out'),
            ],
          ),
        )),
      ),
    );
  }
}
