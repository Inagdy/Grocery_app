import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/widget/spacing.dart';
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
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.71),
        child: SingleChildScrollView(
          child: Column(
            children: [
              14.28.vertical,
              Center(
                child: Image.asset(
                  "assests/images/carrot.png",
                  width: 20.88.w,
                  height: 23.78.h,
                ),
              ),
              7.6.vertical,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
      
                children: [
                  Icon(Icons.location_on, color: Color(0xff4C4F4D)),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight(600),
                      color: Color(0xff4C4F4D),
                    ),
                  ),
                ],
              ),
20.vertical,
              CustomTextField(searchFeild: true),
              20.vertical,
              HomeSlider(),
              30.vertical,
              HomeSectionTitle(leftWord: 'Exclusive Offer'),
              20.vertical,

              SizedBox(
                height: 248.51.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) =>
                      15.07.horizontal,
                  itemBuilder: (context, index) {
                    return HomeBottom(productModel: products[index]);
                  },
                ),
              ),
              30.vertical,
              HomeSectionTitle(leftWord: "Best Selling"),
              20.28.vertical,
              SizedBox(
                height: 248.51.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) =>
                      15.07.horizontal,
                  itemBuilder: (context, index) {
                    return HomeBottom(productModel: products[index]);
                  },
                ),
              ),
              30.vertical,
              HomeSectionTitle(leftWord: "Groceries"),
              20.vertical,

              Padding(
                padding: const EdgeInsets.only(left: 24.71),
                child: SizedBox(
                  height: 105.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: groceries.length,
                    separatorBuilder: (context, index) =>
                        14.95.horizontal,
                    itemBuilder: (context, index) {
                      return SecandHomeSlider(groceriesModel: groceries[index]);
                    },
                  ),
                ),
              ),
              20.vertical,

              SizedBox(
                height: 248.51.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (context, index) =>
                      15.07.horizontal,
                  itemBuilder: (context, index) {
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
