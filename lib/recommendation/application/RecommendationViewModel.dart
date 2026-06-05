import 'package:cart_ux_lab/core/shared/model/Product.dart';
import 'package:cart_ux_lab/core/shared/usecases/AddtoCart.dart';
import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/domain/usecases/LoadRecommendationsUseCase.dart';
import 'package:flutter/material.dart';

class RecommendationViewModel extends ChangeNotifier {
  final LoadRecommendationsUseCase loadRecommendationsUseCase;
  final AddToCart addToCart;

  RecommendationViewModel({
    required this.loadRecommendationsUseCase,
    required this.addToCart,
  });

  List<RecommendationItem> recommendations = [];

  void load() {
    recommendations = loadRecommendationsUseCase();
    notifyListeners();
  }

  void add(RecommendationItem item) {
    Product product = Product(
      id: item.id,
      title: item.title,
      amount: item.amount,
      valueInfo: item.valueInfo,
    );
    addToCart(product);
    recommendations.removeWhere(
      (recommendation) => recommendation.id == item.id,
    );
  }
}
