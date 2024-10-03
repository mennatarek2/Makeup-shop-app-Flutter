import 'package:flutter/material.dart';

class FavoriteWidget extends StatelessWidget {
  const FavoriteWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });
  final String image;
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 105,
            ),
          ),
          const SizedBox(width: 19),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                '\$ ${price}',
                style: TextStyle(
                    color: Color(0xffDB3022),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.delete,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
