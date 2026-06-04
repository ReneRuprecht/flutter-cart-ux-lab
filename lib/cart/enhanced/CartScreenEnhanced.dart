import 'package:cart_ux_lab/cart/shared/product/ProductBox.dart';
import 'package:cart_ux_lab/recommendation/application/RecommendationViewModel.dart';
import 'package:cart_ux_lab/recommendation/data/repositories/RecommendationRepositoryImpl.dart';
import 'package:cart_ux_lab/recommendation/domain/usecases/LoadRecommendationsUseCase.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../recommendation/presentation/Recommendations.dart';
import '../shared/SectionBox.dart';
import 'CheckoutBar.dart';

class CartScreenEnhanced extends StatelessWidget {
  const CartScreenEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        final vm = RecommendationViewModel(
          loadRecommendationsUseCase: LoadRecommendationsUseCase(
            repository: RecommendationRespsitoryImpl(),
          ),
        );
        vm.load();
        return vm;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Warenkorb",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
        ),

        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Consumer<RecommendationViewModel>(
                  builder: (context, vm, child) {
                    return ListView(
                      children: [
                        const ProductBox(title: "Test Produkt", amount: 20.00),

                        const SectionBox(title: "Infos"),

                        Recommendations(
                          items: vm.recommendations,
                          onAddToCart: vm.onAddtoCart,
                        ),
                      ],
                    );
                  },
                ),
              ),

              const CheckoutBarEnhanced(),
            ],
          ),
        ),
      ),
    );
  }
}
