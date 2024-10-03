import 'package:e_commerce_app/Modules/productDetails.dart';
import 'package:e_commerce_app/Screens/Order%20And%20Paymeynt%20Method/PaymenMethod_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:e_commerce_app/Screens/widget/ItemCart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final List<ProductDetails> products = [
    ProductDetails(
        image: 'assets/images/blush.jpg',
        title: 'Cream Blush',
        price: '20',
        review: '54'),
    ProductDetails(
        image: 'assets/images/triojpg.jpg',
        title: 'Girls Gloss',
        price: '65',
        review: '54'),
    ProductDetails(
        image: 'assets/images/plum.jpg',
        title: 'Lip Plumpe',
        price: '60',
        review: '54'),
    ProductDetails(
        image: 'assets/images/kitty.jpg',
        title: 'Hello Kitty',
        price: '120',
        review: '700'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: const Color(0xFFFF8CE9),
          elevation: 0,
          actions: [
            const Icon(Icons.notifications),
            const SizedBox(width: 20),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 310,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      ItemCart(product: products[index]),
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    const Text(
                      'Select All',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: const Color(0xffDB3022),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      'Total Payment',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      ' \$ 1250',
                      style: TextStyle(
                          color: Color(0xffDB3022),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClickButton(
                    nextPage: PaymentMethodScreen(), buttonText: 'Checkout'),
              ),
            ],
          ),
        ));
  }
}
