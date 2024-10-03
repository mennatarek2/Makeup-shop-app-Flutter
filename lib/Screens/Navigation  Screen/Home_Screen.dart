// ignore: file_names
import 'package:e_commerce_app/Modules/productDetails.dart';
import 'package:e_commerce_app/Screens/widget/productWidget.dart';
import 'package:e_commerce_app/Screens/widget/tabWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> tab = ['All', 'Category', 'Top', 'Recommended'];
  final List<ProductDetails> products = [
    ProductDetails(
        image: 'assets/images/ff.jpg',
        title: 'Powder',
        price: '50',
        review: '120'),
    ProductDetails(
        image: 'assets/images/lip.jpg',
        title: 'Lip Tint',
        price: '30',
        review: '54'),
    ProductDetails(
        image: 'assets/images/triojpg.jpg',
        title: 'Girls Gloss',
        price: '65',
        review: '120'),
    ProductDetails(
        image: 'assets/images/blush.jpg',
        title: 'Cream Blush',
        price: '20',
        review: '54'),
    ProductDetails(
        image: 'assets/images/kitty.jpg',
        title: 'Hello Kitty',
        price: '120',
        review: '54'),
    ProductDetails(
        image: 'assets/images/gggg.jpg',
        title: 'Lip Gloss',
        price: '35',
        review: '700'),
    ProductDetails(
        image: 'assets/images/plum.jpg',
        title: 'Lip Plumper',
        price: '60',
        review: '120'),
    ProductDetails(
        image: 'assets/images/palet.jpg',
        title: 'Lip Gloss Palette',
        price: '1000',
        review: '120'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12.withOpacity(0.05),
                                blurRadius: 2,
                                spreadRadius: 1)
                          ],
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Find Your Product',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFFF8CE9),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12.withOpacity(0.05),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12.withOpacity(0.05),
                                blurRadius: 2,
                                spreadRadius: 1)
                          ]),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Color(0xFFFF8CE9),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xC7FFFCFC),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/images/0b955b029c93ec4ab01b39e56b2b2bd4.jpg'),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: tab.length,
                    itemBuilder: (context, index) => TabWidget(tab: tab[index]),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) =>
                        ProductWidget(product: products[index]),
                  ),
                ),
                // GridView Section
                const Center(
                    child: Text(
                  'Newest Products',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
                const SizedBox(height: 30),

                GridView.builder(
                  shrinkWrap:
                      true, // Allow GridView to take only the space it needs
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable scroll inside GridView
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Two items per row
                    childAspectRatio: 0.6, // Adjust aspect ratio to fit design
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) =>
                      ProductWidget(product: products[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
