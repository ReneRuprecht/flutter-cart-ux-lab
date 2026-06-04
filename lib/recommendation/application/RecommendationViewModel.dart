import 'package:cart_ux_lab/cart/domain/usecases/AddRecommendationItemToCartUseCase.dart';
import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/domain/usecases/LoadRecommendationsUseCase.dart';
import 'package:flutter/material.dart';

class RecommendationViewModel extends ChangeNotifier {
  final LoadRecommendationsUseCase loadRecommendationsUseCase;
  final AddRecommendationItemToCartUseCase addRecommendationItemToCartUseCase;

  RecommendationViewModel({
    required this.loadRecommendationsUseCase,
    required this.addRecommendationItemToCartUseCase,
  });

  List<RecommendationItem> recommendations = [];

  void load() {
    recommendations = loadRecommendationsUseCase();
    notifyListeners();
  }

  void onAddtoCart(RecommendationItem item) {
    addRecommendationItemToCartUseCase(item);
    recommendations.remove(item);
    notifyListeners();
  }
}
