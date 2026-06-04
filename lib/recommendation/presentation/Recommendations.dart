import 'package:cart_ux_lab/recommendation/domain/models/RecommendationItem.dart';
import 'package:cart_ux_lab/recommendation/presentation/widgets/RecommendationTile.dart';
import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  final List<RecommendationItem> items;
  final void Function(RecommendationItem) onAddToCart;
  const Recommendations({
    super.key,
    required this.items,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? Container()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Divider(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                padding: const EdgeInsets.all(12),
                child: Text(
                  "DAS KÖNNTE DIR GEFALLEN",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Column(
                children: items.map((item) {
                  return Dismissible(
                    key: ValueKey(item.title),

                    background: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(right: 8),
                      margin: const EdgeInsets.only(left: 12),
                      color: Colors.blue,
                      child: const Icon(Icons.favorite, color: Colors.black),
                    ),

                    secondaryBackground: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 8),
                      margin: const EdgeInsets.only(right: 12),
                      color: Colors.red,
                      child: const Icon(Icons.delete, color: Colors.black),
                    ),

                    child: RecommendationTile(
                      item: item,
                      onAdd: () => onAddToCart(item),
                    ),
                  );
                }).toList(),
              ),
            ],
          );
  }
}
