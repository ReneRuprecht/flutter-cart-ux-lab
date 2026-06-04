import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/core/shared/widgets/product/ProductImage.dart';
import 'package:cart_ux_lab/recommendation/presentation/widgets/ProductCostSection.dart';
import 'package:cart_ux_lab/recommendation/presentation/widgets/ProductSection.dart';
import 'package:flutter/material.dart';

class RecommendationTile extends StatelessWidget {
  final RecommendationItem item;
  final VoidCallback onAdd;

  const RecommendationTile({
    super.key,
    required this.item,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              ProductImage(),
              const SizedBox(width: 10),
              ProductSection(brand: item.brand, title: item.title),
              const SizedBox(width: 20),
              ProductCostSection(
                amount: item.amount,
                valueInfo: item.valueInfo,
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              const SizedBox(width: 80),
              Expanded(
                child: SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: onAdd,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade900,
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text(
                      "In den Warenkorb",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
