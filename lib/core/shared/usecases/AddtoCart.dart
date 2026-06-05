import 'package:cart_ux_lab/core/shared/model/Product.dart';

abstract class AddToCart {
  void call(Product product);
}
