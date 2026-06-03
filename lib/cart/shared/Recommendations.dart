import 'package:cart_ux_lab/cart/shared/product/ProductImage.dart';
import 'package:cart_ux_lab/cart/shared/recommendation/ProductCostSection.dart';
import 'package:cart_ux_lab/cart/shared/recommendation/ProductSection.dart';
import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  final String brand;
  final String title;
  final double amount;
  final String valueInfo;
  const Recommendations({
    super.key,
    required this.brand,
    required this.title,
    required this.amount,
    required this.valueInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          children: List.generate(
            10,
            (index) => Dismissible(
              key: Key(index.toString()),
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
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                alignment: Alignment.center,
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ProductImage(),
                        SizedBox(width: 10),
                        ProductSection(brand: brand, title: title),
                        SizedBox(width: 20),
                        ProductCostSection(
                          amount: amount,
                          valueInfo: valueInfo,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 80),
                        Expanded(
                          child: SizedBox(
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () => {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade900,

                                side: BorderSide(color: Colors.grey),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              child: Text(
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
              ),
            ),
          ),
        ),
      ],
    );
  }
}
