import 'package:e_commerce_app/Screens/Order%20And%20Paymeynt%20Method/Order_Confirm_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class ShippingAdressScreen extends StatelessWidget {
  const ShippingAdressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Add Shipping Address'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(height: 30),
              CustomTextField(
                  lableText: 'Full Name', preffixIcon: Icons.person),
              SizedBox(height: 10),
              CustomTextField(
                  lableText: 'Mobile Number', preffixIcon: Icons.phone),
              SizedBox(height: 10),
              CustomTextField(lableText: 'Adress', preffixIcon: Icons.place),
              SizedBox(height: 10),
              CustomTextField(
                  lableText: 'City', preffixIcon: Icons.location_city),
              SizedBox(height: 10),
              CustomTextField(
                  lableText: 'Zip Code(Posta! Code)', preffixIcon: Icons.mail),
              SizedBox(height: 10),
              CustomTextField(lableText: 'Country', preffixIcon: Icons.public),
              SizedBox(height: 20),
              ClickButton(
                  nextPage: OrderConfirmScreen(), buttonText: 'Add Address')
            ]),
          ),
        ),
      ),
    );
  }
}
