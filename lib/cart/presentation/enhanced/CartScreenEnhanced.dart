import 'package:cart_ux_lab/cart/application/CartViewModel.dart';
import 'package:cart_ux_lab/cart/presentation/widgets/CartSumary.dart';
import 'package:cart_ux_lab/core/shared/widgets/product/ProductBox.dart';
import 'package:cart_ux_lab/recommendation/application/RecommendationViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../recommendation/presentation/Recommendations.dart';
import '../../../core/shared/widgets/SectionBox.dart';
import '../../../voucher/presentation/VoucherSectionEnhanced.dart';
import 'CheckoutBar.dart';

class CartScreenEnhanced extends StatelessWidget {
  const CartScreenEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    final cartVM = context.watch<CartViewModel>();
    final recommendationVM = context.watch<RecommendationViewModel>();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.black,
        title: const Text(
          "Warenkorb",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 12),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ...cartVM.items.map(
                      (item) => ProductBox(
                        id: item.id,
                        title: item.title,
                        amount: item.amount,
                        onDelete: cartVM.remove,
                      ),
                    ),

                    VoucherSectionEnhanced(),

                    SizedBox(height: 8),
                    Divider(),

                    const CartSymmary(),

                    Recommendations(
                      items: recommendationVM.recommendations,
                      onAddToCart: recommendationVM.add,
                    ),
                  ],
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
