import 'package:cart_ux_lab/cart/shared/product/ProductBox.dart';
import 'package:flutter/material.dart';

import '../shared/Recommendations.dart';
import '../shared/SectionBox.dart';
import 'CheckoutBar.dart';

class CartScreenEnhanced extends StatelessWidget {
  const CartScreenEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Warenkorb",
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ProductBox(title: "Test Produkt", amount: 20.00),
                  SectionBox(title: "Infos"),
                  Recommendations(),
                ],
              ),
            ),
            CheckoutBarEnhanced(),
          ],
        ),
      ),
    );
  }
}
