import 'package:e_commerce_app/Screens/widget/FavoriteWidget.dart';
import 'package:flutter/material.dart';

class FavouritScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Favorites'),
          backgroundColor: Colors.transparent,
          foregroundColor: const Color(0xFFFF8CE9),
          elevation: 0,
          actions: [
            const Icon(Icons.notifications),
            const SizedBox(width: 20),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              FavoriteWidget(
                image: 'assets/images/palet.jpg',
                price: '400',
                title: 'Lip Gloss Palette',
              ),
              SizedBox(height: 30),
              FavoriteWidget(
                image: 'assets/images/lip.jpg',
                price: '70',
                title: 'Lip Tint',
              ),
            ],
          ),
        ));
  }
}
