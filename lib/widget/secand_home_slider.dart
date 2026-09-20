import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/groceries_model.dart';

class SecandHomeSlider extends StatelessWidget {
  final GroceriesModel groceriesModel;
  const SecandHomeSlider({super.key, required this.groceriesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.19.w,
      height: 105.h,
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
              width: 71.9.w,
              height: 71.9.h,
            ),
          ),
          Text(
            groceriesModel.title,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight(600),
              color: Color(0xff3E423F),
            ),
          ),
        ],
      ),
    );
  }
}
