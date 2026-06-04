import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';
import 'package:cart_ux_lab/cart/domain/repositories/CartRepository.dart';
import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';

class AddRecommendationItemToCartUseCase {
  final CartRepository repository;

  AddRecommendationItemToCartUseCase({required this.repository});

  void call(RecommendationItem recommendation) {
    final cartItem = CartItem(
      id: recommendation.id,
      title: recommendation.title,
      amount: recommendation.amount,
    );
    repository.addItem(cartItem);
  }
}
