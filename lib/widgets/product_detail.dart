import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(product.imageUrl),
          SizedBox(height: 16),
          Text(product.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          Text(product.description),
          SizedBox(height: 8),
          Text('\$${product.price.toStringAsFixed(2)}', style: TextStyle(color: Colors.green, fontSize: 20)),
        ],
      ),
    );
  }
}