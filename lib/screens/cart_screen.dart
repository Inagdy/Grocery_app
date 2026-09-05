import 'package:flutter/material.dart';
import 'package:grocery_app/models/card_model.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/card_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 6.99),
          Center(
            child: Text(
              'My Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff181725),
              ),
            ),
          ),
          Divider(color: Colors.grey, thickness: 1),
          CardProduct(cardModel: products[0]),
          CardProduct(cardModel: products[1]),
          CardProduct(cardModel: products[2]),
          CardProduct(cardModel: products[3]),
          Divider(color: Colors.grey, thickness: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.89),
            child: CustomButton(
              haslefttag:true,
              text: 'Go to Checkout',
              background: '0xff53B175',
              hasIcon: false,
            ),
          ),
        ],
      ),
    );
  }
}

List<CardModel> products = [
  CardModel(
    imagePath: "assests/images/Pepper.png",
    productName: "Bell Pepper Red",
    productDescription: "1kg, Price",
    price: "\$4.99",
  ),
  CardModel(
    imagePath: "assests/images/egg.png",
    productName: "Egg Chicken Red",
    productDescription: "4pcs, Price",
    price: "\$1.99",
  ),
  CardModel(
    imagePath: "assests/images/banana.png",
    productName: "Organic Bananas",
    productDescription: "12kg, Price",
    price: "\$3.00",
  ),
  CardModel(
    imagePath: "assests/images/ginger.png",
    productName: "Ginger",
    productDescription: "250gm, Price",
    price: "\$2.99",
  ),
];
