import 'package:flutter/material.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            height: 70,
            color: Colors.blueGrey.shade200,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(12),
            child: Text(
              "Empfehlung $index",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
