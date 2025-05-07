import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String name;
  final double price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Product> cart = [];

  List<Product> products = [
    Product(name: "Nike Air Max", price: 129.99, image: "assets/nike.png"),
    Product(name: "Adidas Ultraboost", price: 139.99, image: "assets/adidas.png"),
    Product(name: "Puma Runner", price: 89.99, image: "assets/puma.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shopping App"),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text("Total: \$${cart.fold(0.0, (sum, item) => sum + item.price).toStringAsFixed(2)}"),
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              child: ListTile(
                leading: Image.asset(product.image, width: 50, height: 50),
                title: Text(product.name),
                subtitle: Text("\$${product.price}"),
                trailing: ElevatedButton(
                  child: Text("Add"),
                  onPressed: () {
                    setState(() {
                      cart.add(product);
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

