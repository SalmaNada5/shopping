import 'package:flutter/material.dart';
import 'lists.dart';

class SizeDropdown extends StatefulWidget {
  const SizeDropdown({Key? key}) : super(key: key);

  @override
  _SizeDropdownState createState() => _SizeDropdownState();
}

class _SizeDropdownState extends State<SizeDropdown> {
  String? selectedSize;
  // DropdownButton<String> sizeDropdown() {
  //   List<DropdownMenuItem<String>> dropdownItems = [];
  //   for (String size in sizes) {
  //     var newSize = DropdownMenuItem(
  //       child: Text(size),
  //       value: size,
  //     );
  //     dropdownItems.add(newSize);
  //   }
  //   return DropdownButton<String>(
  //     items: dropdownItems,
  //     value: selectedSize,
  //     icon: const Icon(
  //       Icons.keyboard_arrow_down,
  //     ),
  //     isExpanded: true,
  //     hint: Row(
  //       children: const [
  //         Text(
  //           'Size: ',
  //           style: TextStyle(color: Colors.grey),
  //         ),
  //         Text(
  //           'XS',
  //           style: TextStyle(color: Colors.black),
  //         ),
  //       ],
  //     ),
  //     underline: const SizedBox(),
  //     onChanged: (value) {
  //       setState(() {
  //         selectedSize = value;
  //       });
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: List.generate(
        sizes.length,
        (index) => DropdownMenuItem(
          child: Text(sizes[index]),
          value: sizes[index],
        ),
      ),
      value: selectedSize,
      icon: const Icon(
        Icons.keyboard_arrow_down,
      ),
      isExpanded: true,
      hint: Row(
        children: const [
          Text(
            'Size: ',
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            'XS',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      underline: const SizedBox(),
      onChanged: (value) {
        setState(() {
          selectedSize = value;
        });
      },
    );
  }
}
