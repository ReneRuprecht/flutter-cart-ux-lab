import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';
import 'package:cart_ux_lab/cart/domain/repositories/CartRepository.dart';
import 'package:cart_ux_lab/core/shared/model/Product.dart';
import 'package:cart_ux_lab/core/shared/usecases/AddtoCart.dart';

class AddToCartUseCase implements AddToCart {
  final CartRepository repository;

  AddToCartUseCase({required this.repository});

  @override
  void call(Product product) {
    CartItem cartItem = CartItem(
      id: product.id,
      title: product.title,
      amount: product.amount,
    );
    repository.addItem(cartItem);
  }
}
