
import 'package:e_commerce_app/Modules/productDetails.dart';
import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    super.key,
    required this.product,
  });
  final ProductDetails product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      child: Row(
        children: [
          Checkbox(
            splashRadius: 20,
            activeColor: const Color(0xffDB3022),
            value: true,
            onChanged: (value) {},
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Image.asset(
              product.image,
              height: 90,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 13),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Lip Gloss',
                style: TextStyle(color: Colors.black26),
              ),
              const SizedBox(height: 10),
              Text(
                ' \$ ${product.price}',
                style: const TextStyle(
                    color: Color(0xffDB3022),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Row(
            children: [
              Icon(
                Icons.remove,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(width: 10),
              Text(
                '1',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              Icon(
                size: 30,
                Icons.add,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
