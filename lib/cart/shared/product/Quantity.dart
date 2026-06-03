import 'package:flutter/material.dart';

typedef MenuEntry = DropdownMenuItem<String>;

const List<String> list = <String>['1', '2', '3', '4'];

class Quantity extends StatefulWidget {
  const Quantity({super.key});

  @override
  State<Quantity> createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        setState(() => dropdownValue = value);
      },
      itemBuilder: (context) => list
          .map((val) => PopupMenuItem(value: val, child: Text(val)))
          .toList(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Anzahl $dropdownValue", style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down, size: 20),
        ],
      ),
    );
  }
}
