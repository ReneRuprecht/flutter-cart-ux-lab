import 'package:cart_ux_lab/core/shared/widgets/product/Quantity.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final int id;
  final String title;
  final double amount;
  final void Function(int) onDelete;

  const ProductInfo({
    super.key,

    required this.id,
    required this.title,
    required this.amount,
    required this.onDelete,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        Quantity(),
        Row(
          children: [
            Text(
              "${amount.toStringAsFixed(2)} €",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => onDelete(id),
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.pinkAccent,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
