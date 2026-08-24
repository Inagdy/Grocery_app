import 'package:flutter/material.dart';
import 'package:grocery_app/widget/home_bottom.dart';
import 'package:grocery_app/widget/home_section_title.dart';
import 'package:grocery_app/widget/home_slider.dart';
import 'package:grocery_app/widget/text_field.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.71),
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

          Row(
            children: [
              
              HomeBottom(
                imagePath: "assests/images/banana.png",
                mainTitle: "Organic Bananas",
                secandTitle: "7pcs, Priceg",
                price: "\$4.99",
              ),
              SizedBox(width: 15.07),
              HomeBottom(
                imagePath: "assests/images/apple.png",
                mainTitle: "Red Apple",
                secandTitle: "1kg, Priceg",
                price: "\$4.99",
              ),
            ],
          ),
          SizedBox(height: 30,),
          HomeSectionTitle(leftWord: "Best Selling"),
          SizedBox(height: 20.28,),
          Row(
            children: [
              HomeBottom(imagePath: "assests/images/redChili.png", mainTitle: "Bell Pepper Red", secandTitle: "1kg, Priceg", price:"\$4.99" ),
              SizedBox(width: 15.07),
              HomeBottom(imagePath: "assests/images/ginger.png", mainTitle: "Ginger", secandTitle: "250gm, Priceg", price: "\$4.99"),
            ],
          )
        ],
      ),
    );
  }
}
