import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_tile.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: 'Iphone 16 Pro Max',
      description: 'The iPhone 16 Pro Max offers a premium experience with advanced features and technology. Here are some key descriptions and features of the device:Build Quality: Sleek stainless steel frame with a glass back, providing durability and a premium feel.Colors: Available in various stunning finishes, including Deep Purple, Gold, Silver, and Space BlackDisplay: 6.7-inch Super Retina XDR display with ProMotion technology, offering smooth scrolling and vibrant colors.',
      price: 4497.99,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThADurh-tchc2kpRLhZp_Teyx1hTp7YMczzRKdrrPQ8A1ja40h7_Nmk6QbsC9E5JhtgNE&usqp=CAU',
    ),
    Product(
      title: 'Iphone 15 Pro Max',
      description: 'The iPhone 15 Pro Max combines cutting-edge technology with premium design and features. Here’s an overview of its key specifications and highlights Build Quality: Crafted from aerospace-grade titanium, offering a lightweight yet durable structure. Colors: Available in various elegant finishes, including Natural Titanium, Blue Titanium, White Titanium, and Black Titanium. Display: 6.7-inch Super Retina XDR display with ProMotion technology, providing a smooth and vibrant viewing experience.',
      price: 3578.99,
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5vm3-_ljGMc5XMGEsSDjj-yWEwNY26RfNpvdRHKEucUwGh40-NxMJUtTIo3kEvFisK2M&usqp=CAU',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: products[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}