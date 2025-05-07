import 'package:flutter/material.dart';
import 'product.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(product.image),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(product.description, style: const TextStyle(fontSize: 18)),
          )
        ],
      ),
    );
  }
}
