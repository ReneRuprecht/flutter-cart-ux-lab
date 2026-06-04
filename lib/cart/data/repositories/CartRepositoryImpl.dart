import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';
import 'package:cart_ux_lab/cart/domain/repositories/CartRepository.dart';
import 'package:flutter/material.dart';

class CartRepositoryImpl implements CartRepository {
  final List<CartItem> _items = [
    CartItem(id: 100, title: "item1", amount: 1.99),
    CartItem(id: 200, title: "item2", amount: 2.99),
  ];

  final ValueNotifier<List<CartItem>> cartNotifier = ValueNotifier([]);

  @override
  List<CartItem> getItems() {
    return List.unmodifiable(_items);
  }

  @override
  void addItem(CartItem item) {
    _items.add(item);
    cartNotifier.value = List.unmodifiable(_items);
  }

  @override
  void removeItemById(int id) {
    _items.removeWhere((elem) => elem.id == id);
    cartNotifier.value = List.unmodifiable(_items);
  }
}
