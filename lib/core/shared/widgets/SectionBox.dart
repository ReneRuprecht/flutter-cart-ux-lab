import 'package:flutter/material.dart';

class SectionBox extends StatelessWidget {
  final String title;
  const SectionBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(12),

      color: Colors.blueGrey.shade200,
      alignment: Alignment.center,
      child: Text(title, style: TextStyle(color: Colors.black)),
    );
  }
}
