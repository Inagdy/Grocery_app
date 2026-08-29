import 'package:flutter/material.dart';
import 'package:grocery_app/models/groceries_model.dart';

class SecandHomeSlider extends StatelessWidget {
  final GroceriesModel groceriesModel;
  const SecandHomeSlider({super.key, required this.groceriesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.19,
      height: 105,
      decoration: BoxDecoration(
        color: Color(groceriesModel.backGroundColor),
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.94, right: 15),
            child: Image.asset(
              groceriesModel.imageLink,
              width: 71.9,
              height: 71.9,
            ),
          ),
          Text(
            groceriesModel.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight(600),
              color: Color(0xff3E423F),
            ),
          ),
        ],
      ),
    );
  }
}
