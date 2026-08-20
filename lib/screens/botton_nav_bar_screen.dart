import 'package:flutter/material.dart';
import 'package:grocery_app/screens/account_screen.dart';
import 'package:grocery_app/screens/cart_screen.dart';
import 'package:grocery_app/screens/explore_screen.dart';
import 'package:grocery_app/screens/favorite_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';

class BottonNavBarScreen extends StatefulWidget {
  const BottonNavBarScreen({super.key});

  @override
  State<BottonNavBarScreen> createState() => _BottonNavBarScreenState();
}

class _BottonNavBarScreenState extends State<BottonNavBarScreen> {
  int currentIndex =2;
  List<Widget> screens =[
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffFFFFFF),
      body:SafeArea(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
          currentIndex = index;
     
          });
        },
        backgroundColor: Color(0xffFFFFFF),
        selectedItemColor: Color(0xff53B175),
        unselectedItemColor: Color(0xff181725),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight(600),
        ),
        type:BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.storefront),label: "Shop"),
        BottomNavigationBarItem(icon: Icon(Icons.manage_search),label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_outlined),label: "Card"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: "Favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined),label: "Account"),
      ]),
    );
  }
}