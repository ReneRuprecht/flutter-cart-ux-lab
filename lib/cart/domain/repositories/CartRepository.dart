import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';

abstract class CartRepository {
  List<CartItem> getItems();

  void addItem(CartItem item);

  void removeItemById(int id);
}
