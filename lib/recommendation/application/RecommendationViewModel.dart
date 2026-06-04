import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/domain/usecases/LoadRecommendationsUseCase.dart';
import 'package:flutter/material.dart';

class RecommendationViewModel extends ChangeNotifier {
  final LoadRecommendationsUseCase loadRecommendationsUseCase;

  RecommendationViewModel({required this.loadRecommendationsUseCase});

  List<RecommendationItem> recommendations = [];

  void load() {
    recommendations = loadRecommendationsUseCase();
    notifyListeners();
  }

  void onAddtoCart(RecommendationItem item) {
    debugPrint("Fake add to cart: ${item.title}");
  }
}
