import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_detail.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: ProductDetail(product: product),
    );
  }
}