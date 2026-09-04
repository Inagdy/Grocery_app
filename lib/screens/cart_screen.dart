import 'package:flutter/material.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/card_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 6.99,),

          Text('My Cart' , style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xff181725),
          ),),

          SizedBox(height: 32.17,),
          // CardProduct(
          //   imagePath: 'assests/images/Pepper.png',
          //   productName: 'Banana',
          //   productDescription: '1kg, Price',
          // ),
          
          CustomButton(
            text: 'Go to Checkout',
            background: '0xff53B175',
            hasIcon: false,
          ),
      
        ],
      ),
    );
  }
}