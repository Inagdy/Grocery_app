

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account_screen.dart';
import 'package:grocery_app/screens/botton_nav_bar_screen.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/screens/product_details.dart';
import 'package:grocery_app/screens/shop_screen.dart';
import 'package:grocery_app/screens/signup_screen.dart';

import 'screens/shop_screen.dart';


class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:const BottonNavBarScreen(),
      );
   }
}



