import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Cart_Screen.dart';
import 'package:e_commerce_app/Screens/widget/ClickButtonWidget.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  final List<String> images = [
    'assets/images/triojpg.jpg',
    'assets/images/gggg.jpg',
    'assets/images/plum.jpg'
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Product Overview'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            FanCarouselImageSlider.sliderType1(
              imagesLink: images,
              isAssets: true,
              autoPlay: true,
              sliderHeight: 300,
              showIndicator: true,
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pout Pillow Cushion',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Lip Gloss',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black54),
                    )
                  ],
                ),
                Text('\$35',
                    style: TextStyle(
                      color: Color(0xffDB3022),
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ))
              ],
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
           // packege to rarte ******
              child: PannableRatingBar(
                rate: 3.6,
                items: List.generate(
                    5,
                    (index) => const RatingWidget(
                          selectedColor: Colors.amber,
                          unSelectedColor: Colors.grey,
                          child: Icon(
                            Icons.star,
                            size: 22,
                          ),
                        )),
              ),
            ),
            const Text(
              'Your lip gloss game is in for an upgrade! Our newest lip gloss lays on a mirror-like shine with a unique sponge tip applicator. PLUS, it delivers max hydration and plumpness thanks to skin-loving ingredients, like jojoba seed oil, cocoa seed butter, and sodium hyaluronate.',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black54),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  radius: 23,
                  backgroundColor: Color(0x1f989797),
                  child: Icon(
                    Icons.shopping_cart,
                    color: Color(0xFFFF8CE9),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModel(context);
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFFFF8CE9)),
                    child: const Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ))),
    );
  }
}

void showModel(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2.5,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 19, right: 19),
            child: Column(
              children: [
                // const Row(
                //   children: [
                //   //   Text(
                //   //     "Size :",
                //   //     style:
                //   //         TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                //   //   ),
                //   //   SizedBox(width: 60),
                //   //   Text(
                //   //     'S',
                //   //     style:
                //   //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   //   ),
                //   //   SizedBox(width: 25),
                //   //   Text(
                //   //     'M',
                //   //     style:
                //   //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   //   ),
                //   //   SizedBox(width: 30),
                //   //   Text(
                //   //     'L',
                //   //     style:
                //   //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   //   ),
                //   //   SizedBox(width: 30),
                //   //   Text(
                //   //     'Xl',
                //   //     style:
                //   //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   //   )
                //   // ],
                // ),
                const SizedBox(height: 17),
                const Row(
                  children: [
                    Text(
                      "Color :",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 45),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFFF0000),
                    ),
                    SizedBox(width: 25),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor:  Color(0xFFE35B43),
                    ),
                    SizedBox(width: 25),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFFF006B),
                    ),
                    SizedBox(width: 25),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFFFF86C0),
                    ),
                  ],
                ),
                const SizedBox(height: 17),
                const Row(
                  children: [
                    Text(
                      'Total :',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 30),
                    Text(
                      "1",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(width: 30),
                    Icon(Icons.remove, color: Colors.blue)
                  ],
                ),
                const SizedBox(height: 17),
                const Row(
                  children: [
                    Text(
                      'Total Payment',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 140),
                    Text(
                      '\$35',
                      style: TextStyle(
                          color: Color(0xffDB3022),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    showModel(context);
                  },
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xFFFF8CE9)),
                    child: Center(
                        child: ClickButton(
                      buttonText: 'Checkout',
                      nextPage: CartScreen(),
                    )),
                  ),
                )
              ],
            ),
          ),
        );
      });
}
