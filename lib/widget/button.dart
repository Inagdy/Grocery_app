import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text ;
  final bool hasIcon;
  final IconData? iData;
  final bool haslefttag;

  final String background;
  final VoidCallback? onPressed;




  const CustomButton({
    super.key,
    required this.text ,
    required this.background,
    this.hasIcon = false,
    this.iData,
    this.haslefttag = false,
    this.onPressed, 
  });

  @override
  Widget build(BuildContext context) {
  final bool isWide = MediaQuery.sizeOf(context).width >= 700;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(19),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(19),
        child: Container(
          width:  double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 25.4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            color: Color(int.parse(background)),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (hasIcon)
                Positioned(
                  left: 25.17,
                  child: Icon(
                    iData,
                    color: const Color(0xFF43B879),
                    size: 30,
                  ),
                ),

              Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: hasIcon
                        ? const Color(0xFF43B879)
                        : const Color(0xffFFF9FF),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,

                  ),
                ),
              ),

              if (haslefttag)
                Positioned(
                  right: 22.5,
                  child: Container(
                    width: 43.w,
                    height: 22.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF489E67),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "\$12.96",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFCFCFC),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}