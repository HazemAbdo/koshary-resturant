import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _kosharyOptions = const [
    ["Super Saver", "4.00", "lib/images/koshary-1.jpg", Colors.green],
    ["Small koshary", "2.50", "lib/images/koshary-2.jpg", Colors.yellow],
    ["Chicken koshary", "12.80", "lib/images/koshary-3.jpg", Colors.brown],
    ["Kids koshary", "1.00", "lib/images/koshary-4.jpg", Colors.blue],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _kosharyOptions;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_kosharyOptions[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
