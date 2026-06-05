import 'package:flutter/material.dart';

class VoucherSection extends StatelessWidget {
  const VoucherSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
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
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'XXXX-YYYY-ZZZZ',
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
