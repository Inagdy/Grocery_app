import 'package:flutter/material.dart';
import 'package:grocery_app/models/explore_model.dart';
import 'package:grocery_app/screens/beverages_screen.dart';
import 'package:grocery_app/widget/text_field.dart';

import '../widget/explore_item .dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.01),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 8.1),
            Text(
              'Find Products',
              style: TextStyle(
                color: Color(0xff181725),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
            CustomTextField(searchFeild: true),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 174.5 / 189.11,
                ),
                itemCount: product.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExploreItem(
                    exploreModel: product[index],
                    onPressed: () {
                      if (product[index] == product.last) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BeveragesScreen(),
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ExploreModel> product = [
  ExploreModel(
    imagePath: 'assests/images/frashfruitsvegtable.png',
    textdata: 'Frash Fruits \n& Vegetable',
    backColor: "0xFF53B175",
  ),
  ExploreModel(
    imagePath: 'assests/images/cookingoil.png',
    textdata: 'Cooking Oil\n& Ghee',
    backColor: "0xFFF8A44C",
  ),
  ExploreModel(
    imagePath: 'assests/images/meal.png',
    textdata: 'Meat & Fish',
    backColor: "0xFFF7A593",
  ),
  ExploreModel(
    imagePath: 'assests/images/bread.png',
    textdata: 'Bakery & Snacks',
    backColor: "0xFFD3B0E0",
  ),
  ExploreModel(
    imagePath: 'assests/images/daily.png',
    textdata: 'Dairy & Eggs',
    backColor: "0xFFFDE598",
  ),

  ExploreModel(
    imagePath: 'assests/images/beveages.png',
    textdata: 'Beverages',
    backColor: "0xFFB7DFF5",
  ),
];
