
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widget/spacing.dart';

class CustomBottomSheet extends StatelessWidget {
  final String lefttext;
  final String rigthtext;
  final bool? hasicon; 
  final IconData? iconData;

  const CustomBottomSheet({super.key, required this.lefttext, required this.rigthtext, this.hasicon, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25.01),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  lefttext,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff7C7C7C),
                  ),
                ),
              ),
              if (hasicon == true)
                Icon(iconData)
              else
                Text(
                  rigthtext,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
              15.horizontal,
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.01),
         child: Divider(),
       ),
      ],
    );
  }
}