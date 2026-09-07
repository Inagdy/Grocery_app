import 'package:flutter/material.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/widget/homebottom.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

@override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 48,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Center(
                    child: Text(
                      'Beverages',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: const Icon(Icons.commit),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 29.81),


            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 173.32 / 248.51,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return HomeBottom(productModel: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}

List<ProductModel> products =
[
  ProductModel(image: 'assests/images/cokea.png', title: 'Diet Coke', descripion: '355ml, Price', price: 1.99 ,imageW: 44.49 ,imageh: 89.36),
  ProductModel(image: 'assests/images/sprite.png', title: 'Sprite Can', descripion: '325ml, Price', price: 1.50,imageW: 44.49 ,imageh: 89.36),
  ProductModel(image: 'assests/images/applegrape.png', title: 'Apple & Grape Juice', descripion: '2L, Price', price: 15.99,imageW: 44.49 ,imageh: 89.36 ),
  ProductModel(image: 'assests/images/orage.png', title: 'Orenge Juice', descripion: '2L, Price', price: 15.99,imageW: 44.49 ,imageh: 89.36),
  ProductModel(image: 'assests/images/Coaca.png', title: 'Coca Cola Can', descripion: '325ml, Price', price: 4.99,imageW: 44.49 ,imageh: 89.36),
  ProductModel(image: 'assests/images/Pepci.png', title: 'Diet Coke', descripion: '330ml, Price', price: 4.99,imageW: 44.49 ,imageh: 89.36),

];

