import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  //list of items on sale
  final List _shopItems = [
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green, Colors.grey],
    ["Banana", "2.50", "assets/images/bananas.png", Colors.yellow, Colors.red],
    [
      "Chicken",
      "12.60",
      "assets/images/chicken.png",
      Colors.brown,
      Colors.blue
    ],
    ["Water", "1.00", "assets/images/water.png", Colors.blue, Colors.yellow],
  ];

  //list of a cart items
  List _cartIrems = [];

  get shopItems => _shopItems;

  get cartItems => _cartIrems;

  //add item to cart
  void addItemToCart(int index) {
    _cartIrems.add(_shopItems[index]);
    notifyListeners();
  }

  //remoce item from cart
  @override
  void removeItemFromCart(int index) {
    _cartIrems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal() {
    double totlaPrice = 0;
    for (int i = 0; i < _cartIrems.length; i++) {
      totlaPrice += double.parse(_cartIrems[i][1]);
    }
    return totlaPrice.toStringAsFixed(2);
  }
}
