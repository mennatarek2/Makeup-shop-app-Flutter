import 'package:e_commerce_app/Modules/productDetails.dart';
import 'package:e_commerce_app/Screens/Navigation%20%20Screen/Product_Screen.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.product,
  });
  final ProductDetails product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 170,
                  child: ClipRRect(
                    child: Image.asset(product.image),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  '(${product.review})',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(width: 8),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                      color: Color(0xffDB3022),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
