import 'dart:ui';

import 'package:cart_ux_lab/cart/data/repositories/CartRepositoryImpl.dart';

class CartChangesUseCase {
  final CartRepositoryImpl repo;

  CartChangesUseCase(this.repo);

  void addListener(VoidCallback callback) {
    repo.cartNotifier.addListener(callback);
  }

  void removeListener(VoidCallback callback) {
    repo.cartNotifier.removeListener(callback);
  }
}
