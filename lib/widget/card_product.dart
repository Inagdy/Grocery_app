import 'package:flutter/material.dart';
import 'package:grocery_app/widget/adding_remove_counter.dart';

class CardProduct extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;

  const CardProduct({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.productDescription,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25.27),
      child: Row(
        children: [
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Image.asset(imagePath),
          Column(
            children: [
              Text(productName),
              Text(productDescription),
              AddingRemoveCounter()
            ],
          ),
        ],
      ),
    );
  }
}