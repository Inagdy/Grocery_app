import 'package:flutter/material.dart';
import 'package:grocery_app/models/card_model.dart';
import 'package:grocery_app/screens/orderaccept.dart';
import 'package:grocery_app/widget/bottom_sheet.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/card_product.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                haslefttag: true,
                text: 'Go to Checkout',
                background: '0xff53B175',
                hasIcon: false,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 791,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 25.01,
                                top: 30,
                                right: 25,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Checkout",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff181725),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.close),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Divider(),

                            customBottomSheet(
                              lefttext: 'Delivery',
                              rigthtext: 'Select Method',
                            ),
                            customBottomSheet(
                              lefttext: 'Pament',
                              rigthtext: 'Select Method',
                              hasicon: true,
                              iconData: Icons.credit_card,
                            ),
                            customBottomSheet(
                              lefttext: 'Promo Code',
                              rigthtext: 'Pick discount',
                            ),
                            customBottomSheet(
                              lefttext: 'Total Cost',
                              rigthtext: '\$13.97',
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20 ,left: 25.01),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontWeight: FontWeight(600),
                                        color: Color(0xff7C7C7C),
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              "By placing an order you agree to our \n",
                                        ),
                                        TextSpan(
                                          text: " Terms",
                                          style: TextStyle(
                                            color: Color(0xff181725),
                                          ),
                                        ),
                                        TextSpan(text: " And"),
                                        TextSpan(
                                          text: " Conditions",
                                          style: TextStyle(
                                            color: Color(0xff181725),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                top: 26.5,
                                left: 24.74,
                                right: 25.26,
                              ),
                              child: CustomButton(
                                text: "Place Order",
                                background: "0xff53B175",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OrderAccept(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
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
