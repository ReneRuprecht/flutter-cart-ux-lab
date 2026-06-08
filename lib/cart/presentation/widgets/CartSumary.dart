import 'package:flutter/material.dart';

class CartSymmary extends StatelessWidget {
  const CartSymmary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              "Summe Artikel",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Spacer(),
            Text("4.89 €", style: TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              "Gestamstumme",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "4.89 €",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("inkl Mwst", style: TextStyle(color: Colors.white)),
                Text(
                  "zzgl. Versandkosten",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Spacer(),
            Text("0,80 €", style: TextStyle(color: Colors.white)),
          ],
        ),

        SizedBox(height: 20),
      ],
    );
  }
}
