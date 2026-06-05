import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';
import 'package:cart_ux_lab/cart/domain/usecases/CartChangesUseCase.dart';
import 'package:cart_ux_lab/cart/domain/usecases/DeleteItemByIdUseCase.dart';
import 'package:cart_ux_lab/cart/domain/usecases/LoadCartItemsUseCase.dart';
import 'package:flutter/material.dart';

class CartViewModel extends ChangeNotifier {
  final LoadItemsUseCase loadItemsUseCase;
  final CartChangesUseCase cartChangesUseCase;
  final DeleteItemByIdUseCase deleteItemByIdUseCase;

  CartViewModel({
    required this.loadItemsUseCase,
    required this.cartChangesUseCase,
    required this.deleteItemByIdUseCase,
  }) {
    cartChangesUseCase.addListener(load);
  }

  List<CartItem> items = [];

  void load() {
    items = loadItemsUseCase();
    notifyListeners();
  }

  void remove(int id) {
    deleteItemByIdUseCase(id);
  }
}
