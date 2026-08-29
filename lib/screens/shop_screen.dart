import 'package:flutter/material.dart';
import 'package:grocery_app/models/groceries_model.dart';
import 'package:grocery_app/models/product_model.dart';
import 'package:grocery_app/widget/homebottom.dart';
import 'package:grocery_app/widget/home_section_title.dart';
import 'package:grocery_app/widget/home_slider.dart';
import 'package:grocery_app/widget/secand_home_slider.dart';
import 'package:grocery_app/widget/text_field.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 14.28),
            Center(
              child: Image.asset(
                "assests/images/carrot.png",
                width: 20.88,
                height: 23.78,
              ),
            ),
            SizedBox(height: 7.6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.location_on, color: Color(0xff4C4F4D)),
                Text(
                  'Dhaka, Banassre',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight(600),
                    color: Color(0xff4C4F4D),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            CustomTextField(searchFeild: true),
            SizedBox(height: 20),
            HomeSlider(),
            SizedBox(height: 30),
            HomeSectionTitle(leftWord: 'Exclusive Offer'),
            SizedBox(height: 20),

            SizedBox(
              height: 248.51,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 15.07),
                itemBuilder: (context, index) {
                  return HomeBottom(productModel: products[index]);
                },
              ),
            ),
            SizedBox(height: 30),
            HomeSectionTitle(leftWord: "Best Selling"),
            SizedBox(height: 20.28),
            SizedBox(
              height: 248.51,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 15.07),
                itemBuilder: (context, index) {
                  return HomeBottom(productModel: products[index]);
                },
              ),
            ),
            SizedBox(height: 30),
            HomeSectionTitle(leftWord: "Groceries"),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 24.71),
              child: SizedBox(
                height: 105,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceries.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 14.95),
                  itemBuilder: (context, index) {
                    return SecandHomeSlider(groceriesModel: groceries[index]);
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              height: 248.51,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 15.07),
                itemBuilder: (context, index) {
                  return HomeBottom(productModel: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> products = [
  ProductModel(
    image: "assests/images/banana.png",
    title: "Organic Bananas",
    descripion: "7pcs, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assests/images/apple.png",
    title: "Red Apple",
    descripion: "1kg, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assests/images/ginger.png",
    title: "Ginger",
    descripion: "1kg, Priceg",
    price: 4.99,
  ),
  ProductModel(
    image: "assests/images/redChili.png",
    title: "Bell Pepper Red",
    descripion: "1kg, Priceg",
    price: 4.99,
  ),
];

List<GroceriesModel> groceries = [
  GroceriesModel(
    backGroundColor: 0xffF8A44C,
    imageLink: 'assests/images/pens.png',
    title: 'Pulses',
  ),
  GroceriesModel(
    backGroundColor: 0xff53B175,
    imageLink: 'assests/images/rise.png',
    title: 'Rice',
  ),
];
