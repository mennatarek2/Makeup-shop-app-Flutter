import 'package:e_commerce_app/Screens/Order%20And%20Paymeynt%20Method/Shipping_AdressScreen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  int? type = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Paymet Method'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: type == 1
                        ? Border.all(width: 1, color: Color(0xffDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: Color(0xffDB3022),
                        value: 1,
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      Text(
                        "Amazon Pay",
                        style: type == 1
                            ? TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDB3022))
                            : TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/amazon.png',
                        height: 60,
                        width: 95,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: type == 2
                        ? Border.all(width: 1, color: Color(0xffDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: Color(0xffDB3022),
                        value: 2,
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      Text(
                        "Credit Card",
                        style: type == 2
                            ? TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDB3022))
                            : TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/visa.png',
                        height: 60,
                        width: 50,
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/images/mastercard.png',
                        height: 60,
                        width: 50,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: type == 3
                        ? Border.all(width: 1, color: Color(0xffDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: Color(0xffDB3022),
                        value: 3,
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      Text(
                        "Pay Pal",
                        style: type == 3
                            ? TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDB3022))
                            : TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/paybal.png',
                        height: 60,
                        width: 95,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: type == 4
                        ? Border.all(width: 1, color: Color(0xffDB3022))
                        : Border.all(width: 0.3, color: Colors.grey),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    children: [
                      Radio(
                        activeColor: Color(0xffDB3022),
                        value: 4,
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      Text(
                        "Google Pay",
                        style: type == 4
                            ? TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffDB3022))
                            : TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/google.png',
                        height: 60,
                        width: 95,
                        fit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    'Sub Total',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    '\$ 1250',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Discount',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    '\$ 250',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  )
                ],
              ),
              Divider(
                height: 20,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    '\$ 1000',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDB3022)),
                  )
                ],
              ),
              SizedBox(height: 30),
              ClickButton(
                  nextPage: ShippingAdressScreen(),
                  buttonText: 'Confirm Payment')
            ],
          ),
        ),
      ),
    );
  }
}
