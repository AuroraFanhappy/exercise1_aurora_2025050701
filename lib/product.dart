class Product {
  final String name;
  final String image;
  final String description;

  Product({required this.name, required this.image, required this.description});
}

List<Product> products = [
  Product(name: 'Nike Shoes', image: 'assets/nike.png', description: 'Comfortable and stylish Nike shoes.'),
  Product(name: 'Adidas Shoes', image: 'assets/adidas.png', description: 'High performance Adidas shoes.'),
  Product(name: 'Puma Shoes', image: 'assets/puma.png', description: 'Trendy Puma sneakers.'),
];
