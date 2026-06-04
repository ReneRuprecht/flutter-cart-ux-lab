import 'package:cart_ux_lab/cart/domain/models/CartItem.dart';
import 'package:cart_ux_lab/cart/domain/repositories/CartRepository.dart';

class LoadItemsUseCase {
  final CartRepository repository;

  LoadItemsUseCase({required this.repository});

  List<CartItem> call() {
    return repository.getItems();
  }
}
