import 'package:cart_ux_lab/cart/shared/product/ProductImage.dart';
import 'package:cart_ux_lab/cart/shared/product/ProductInfo.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String title;
  final double amount;
  const ProductBox({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ProductImage(),
          SizedBox(width: 16),
          Expanded(
            child: ProductInfo(title: title, amount: amount),
          ),
        ],
      ),
    );
  }
}
