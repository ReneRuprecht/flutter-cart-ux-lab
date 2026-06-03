import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  final String brand;
  final String title;
  const ProductSection({super.key, required this.brand, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(brand, style: TextStyle(color: Colors.grey, fontSize: 16)),
          Text(
            title,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontSize: 18),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
