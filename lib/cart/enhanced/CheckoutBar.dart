import 'package:flutter/material.dart';

class CheckoutBarEnhanced extends StatelessWidget {
  const CheckoutBarEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text(
            "Zur kasse",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
