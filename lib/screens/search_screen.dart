import 'package:flutter/material.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/widget/homebottom.dart';
import 'package:grocery_app/widget/text_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.01),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      searchFeild: true,
                      suffixIcon: Icons.cancel,
                    ),
                  ),
                  const SizedBox(width: 19.38),
                  const Icon(Icons.commit),
                ],
              ),
              SizedBox(height: 30,),
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
  ProductModel(image: 'assests/images/eggchickenred.png', title: 'Egg Chicken Red', descripion: '4pcs, Price', price: 1.99 ,imageW: 121.69 ,imageh: 121.69),
  ProductModel(image: 'assests/images/whiteeggs.png', title: 'Egg Chicken White', descripion: '180g, Price', price: 1.50 ,imageW: 121.69 ,imageh: 121.69),
  ProductModel(image: 'assests/images/eggpasta.png', title: 'Egg Pasta ', descripion: '30gm, Price', price: 15.99,imageW: 121.69 ,imageh: 121.69 ),
  ProductModel(image: 'assests/images/eggnoodles.png', title: 'Egg Noodles', descripion: '2L, Price', price: 15.99,imageW: 121.69 ,imageh: 121.69),
  ProductModel(image: 'assests/images/mayonnaiseggless.png', title: 'Mayonnais Eggless', descripion: '325ml, Price', price: 4.99,imageW: 121.69 ,imageh: 121.69),
  ProductModel(image: 'assests/images/eggnoodless.png', title: 'Egg Noodles', descripion: '330ml, Price', price: 4.99,imageW: 121.69  ,imageh: 121.69 ),

];
