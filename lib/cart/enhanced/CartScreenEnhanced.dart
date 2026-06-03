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
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SectionBox(title: "Warenkorb"),
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
