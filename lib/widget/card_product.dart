import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widget/spacing.dart';
import 'package:grocery_app/models/card_model.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/widget/adding_remove_counter.dart';

class CardProduct extends StatelessWidget {
  final CardModel cardModel;
  const CardProduct({super.key, required this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 25.27),
          child: Row(
            children: [
              Image.asset(cardModel.imagePath, width: 70.43.w, height: 64.69.h),
              27.84.horizontal,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardModel.productName,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff181725),
                      ),
                    ),
                    5.vertical,
                    Text(
                      cardModel.productDescription,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    12.vertical,
                    AddingRemoveCounter(count: 1),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.close, color: Color(0xffB3B3B3)),
                  29.415.vertical,
                  Text(
                    cardModel.price,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff181725),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (cardModel != products.last)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.2),
            child: Divider(color: Colors.grey, thickness: 1),
          ),
      ],
    );
  }
}
