import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addToCart(CartItem item) {
    // Add item logic (update quantity if exists, else add)
    var index = _items.indexWhere((e) => e.foodItem.id == item.foodItem.id);
    if (index != -1) {
      _items[index].quantity += item.quantity;
    } else {
      _items.add(item);
    }
    notifyListeners();
  }

  double get totalAmount {
    double total = 0;
    for (var item in _items) {
      total += item.quantity * item.foodItem.price;
    }
    return total;
  }

  // create get function to get total qauntity of items in cart
  int get totalQuantity {
    int total = 0;
    for (var item in _items) {
      total += item.quantity;
    }
    return total;
  }

  void removeFromCart(String foodId) {
    _items.removeWhere((item) => item.foodItem.id == foodId);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
