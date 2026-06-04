import 'package:flutter/material.dart';

class ProductCostSection extends StatelessWidget {
  final double amount;
  final String valueInfo;
  const ProductCostSection({
    super.key,
    required this.amount,
    required this.valueInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${amount.toStringAsFixed(2)} €",
          softWrap: true,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(valueInfo, style: TextStyle(color: Colors.grey, fontSize: 16)),
      ],
    );
  }
}
