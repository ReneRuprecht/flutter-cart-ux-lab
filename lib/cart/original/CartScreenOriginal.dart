import 'package:flutter/material.dart';

import '../shared/Recommendations.dart';
import '../shared/SectionBox.dart';
import 'CheckoutBar.dart';

class CartScreenOriginal extends StatelessWidget {
  const CartScreenOriginal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Warenkorb",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                SectionBox(title: "Warenkorb"),
                SectionBox(title: "Infos"),
                Recommendations(),
              ],
            ),
            CheckoutBar(),
          ],
        ),
      ),
    );
  }
}
