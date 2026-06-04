import 'package:cart_ux_lab/cart/data/repositories/CartRepositoryImpl.dart';

class DeleteItemByIdUseCase {
  final CartRepositoryImpl repo;

  DeleteItemByIdUseCase(this.repo);

  void call(int id) {
    repo.removeItemById(id);
  }
}
