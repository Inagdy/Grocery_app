

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/filter.dart';
import 'package:grocery_app/screens/onbording.dart';
import 'package:grocery_app/screens/orderaccept.dart';




class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:const OnbordingScreen(),
      );
   }
}



