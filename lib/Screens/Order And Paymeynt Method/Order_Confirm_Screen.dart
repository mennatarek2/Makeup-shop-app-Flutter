import 'package:e_commerce_app/Screens/Order%20And%20Paymeynt%20Method/Order_Success_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:flutter/material.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Order'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shipping Address",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 9),
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dear Menna',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Change',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffDB3022)),
                                ))
                          ],
                        ),
                        const Text(
                          'Order Number: 12345',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 7),
                        const Text(
                          'Address: John Smith, 45 Baker Street, London',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment Method',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffDB3022)),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Image.asset(
                        'assets/images/visa.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      '**** **** **** 5372',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Delivery Method',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffDB3022)),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Image.asset(
                        'assets/images/freehime.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 60,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Image.asset(
                        'assets/images/marsol.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                const Row(
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
                const SizedBox(height: 10),
                const Row(
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
                const Divider(
                  height: 20,
                  color: Colors.grey,
                ),
                const Row(
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
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClickButton(
                      nextPage: OrderSuccessScreen(),
                      buttonText: 'Confirm Order'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
