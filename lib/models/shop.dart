import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "T-Shirt",
        price: 49.99,
        description:
            'Embrace comfort and style with our soft and breathable t-shirts.',
        imagePath: 'assets/product.jpg'),
    Product(
        name: "Skirt",
        price: 79.99,
        description: "Step into elegance with our collection of skirts.",
        imagePath: 'assets/product2.jpg'),
    Product(
        name: "Jeans",
        price: 99.99,
        description:
            'Discover the perfect blend of fashion with our selection of jeans.',
        imagePath: 'assets/product3.jpg'),
    Product(
        name: "Cute Bag",
        price: 89.99,
        description:
            'Add a touch of whimsy to your ensemble with our cute bags.',
        imagePath: 'assets/bag.jpg'),
  ];

  List<Product> _cart = [];
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
