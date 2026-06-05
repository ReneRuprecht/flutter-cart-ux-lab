import 'package:cart_ux_lab/core/shared/widgets/product/ProductImage.dart';
import 'package:cart_ux_lab/core/shared/widgets/product/ProductInfo.dart';
import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final int id;
  final String title;
  final double amount;
  final void Function(int) onDelete;

  const ProductBox({
    super.key,
    required this.id,
    required this.title,
    required this.amount,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 150,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ProductImage(),
          SizedBox(width: 16),
          Expanded(
            child: ProductInfo(
              id: id,
              title: title,
              amount: amount,
              onDelete: onDelete,
            ),
          ),
        ],
      ),
    );
  }
}
