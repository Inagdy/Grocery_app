

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widget/spacing.dart';

class Header extends StatelessWidget {
  final String headerMainText;
  final String secandMainText;

  const Header({
    super.key,
    required this.headerMainText,
    required this.secandMainText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        28.42.vertical,
        Center(
          child: Image.asset(
            "assests/images/carrot.png",
            width: 47.84.w,
            height: 55.64.h,
          ),
        ),
        100.21.vertical,
        Text(
          headerMainText,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 26.sp,
            letterSpacing: 0,
            color: Color(0xff181725),
          ),
        ),
        15.vertical,
        Text(
          secandMainText,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Color(0xff7C7C7C),
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}