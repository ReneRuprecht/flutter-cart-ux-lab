import 'package:cart_ux_lab/voucher/application/VoucherViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VoucherSectionEnhanced extends StatelessWidget {
  const VoucherSectionEnhanced({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<VoucherViewModel>();

    Color borderColor;
    switch (vm.status) {
      case VoucherStatus.valid:
        borderColor = Colors.green;
        break;
      case VoucherStatus.invalid:
        borderColor = Colors.red;
        break;
      default:
        borderColor = Colors.white;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Gutscheincode",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: 6),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged: vm.reset,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'XXXX-YYYY-ZZZZ',
                  ),
                ),
              ),
              TextButton(
                onPressed: vm.toggle,
                child: const Text(
                  "anwenden",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
