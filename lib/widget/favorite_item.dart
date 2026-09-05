import 'package:flutter/material.dart';
import 'package:grocery_app/models/favorite_model.dart';
import 'package:grocery_app/screens/favorite_screen.dart';

class FavoriteItem extends StatelessWidget {
  final FavoriteModel favoriteItem;

  const FavoriteItem({super.key, required this.favoriteItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 32.62,
            right: 25.42,
            top: 30.0,
            bottom: 30.0,
          ),
          child: Row(
            children: [
              Image.asset(favoriteItem.imagePath, width: 30.91, height: 54.9),
              SizedBox(width: 42.04),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      favoriteItem.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF181725),
                      ),
                    ),
                    Text(
                      favoriteItem.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF7C7C7C),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text("\$${favoriteItem.price.toStringAsFixed(2)}"),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios_outlined),
                    onPressed: () {
                      // Handle delete action
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        if (favoriteItem != favoriteproduct.last)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.2),
            child: Divider(color: Color(0xFFE2E2E2), thickness: 1),
          ),
      ],
    );
  }
}
