import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/models/explore_model.dart';

class ExploreItem extends StatelessWidget {
  final ExploreModel exploreModel;
  final VoidCallback? onPressed;


  const ExploreItem({super.key, required this.exploreModel,this.onPressed});

@override
Widget build(BuildContext context) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        border: Border.all(
          color: Color(int.parse(exploreModel.backColor)).withValues(alpha: 0.7),
          width: 1
        ),
        color: Color(int.parse(exploreModel.backColor)).withValues(alpha: 0.1),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 31.1),
              child: Image.asset(exploreModel.imagePath ,width: 111.38.w, height: 74.9.h,),
            ),
            Text(
              exploreModel.textdata,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight(400)
              ),
            ),
          ],
        ),
     
      ),
    ),
  );
}
}
