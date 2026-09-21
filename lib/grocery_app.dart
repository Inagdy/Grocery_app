import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/onbording.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
      return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:const OnbordingScreen(),
        ),
      );
   }
}