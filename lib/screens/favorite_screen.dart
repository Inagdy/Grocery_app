import 'package:flutter/material.dart';
import 'package:grocery_app/models/favorite_model.dart' show FavoriteModel;
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/favorite_item.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 6.99),
          Text(
            "Favorite",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0xFF181725),
            ),
          ),
          SizedBox(height: 32.17),
          Divider(color: Color(0xFFE2E2E2), thickness: 1),
          FavoriteItem(favoriteItem: favoriteproduct[0]),
          FavoriteItem(favoriteItem: favoriteproduct[1]),
          FavoriteItem(favoriteItem: favoriteproduct[2]),
          FavoriteItem(favoriteItem: favoriteproduct[3]),
          FavoriteItem(favoriteItem: favoriteproduct[4]),
          Divider(color: Color(0xFFE2E2E2), thickness: 1),
          SizedBox(height: 51.92),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.89),
            child: CustomButton(text: "Add All To Cart", background: "0xFF53B175"),
          ),
        ],
      ),
    );
  }
}

List<FavoriteModel> favoriteproduct = [
  FavoriteModel(
    imagePath: 'assests/images/sprite.png',
    title: 'Sprite Can',
    description: '325ml, Price',
    price: 1.50,
  ),
  FavoriteModel(
    imagePath: 'assests/images/cokea.png',
    title: 'Diet Coke',
    description: '355ml, Price',
    price: 1.99,
  ),
  FavoriteModel(
    imagePath: "assests/images/applegrape.png",
    title: "Apple & Grape Juice",
    description: "2L, Price",
    price: 15.50,
  ),
  FavoriteModel(
    imagePath: "assests/images/Coaca.png",
    title: "Coca Cola Can",
    description: "325ml, Price, Price",
    price: 4.99,
  ),
  FavoriteModel(
    imagePath: "assests/images/Pepci.png",
    title: "Pepsi Can",
    description: "330ml, Price",
    price: 4.99,
  ),
  // Add more favorite items here
];
