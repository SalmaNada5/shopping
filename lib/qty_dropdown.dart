import 'package:flutter/material.dart';
import 'lists.dart';

class QtyDropdown extends StatefulWidget {
  const QtyDropdown({Key? key}) : super(key: key);

  @override
  _QtyDropdownState createState() => _QtyDropdownState();
}

class _QtyDropdownState extends State<QtyDropdown> {
  String? selectedQty;

  DropdownButton<String> qtyDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String q in qty) {
      var newItem = DropdownMenuItem(
        child: Text(q),
        value: q,
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
      items: dropdownItems,
      value: selectedQty,
      icon: const Icon(
        Icons.keyboard_arrow_down,
      ),
      hint: Row(
        children: const [
          Text(
            'Qty: ',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            '1',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      underline: const SizedBox(),
      onChanged: (value) {
        setState(() {
          selectedQty = value;
        });
      },
      isExpanded: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return qtyDropdown();
  }
}
