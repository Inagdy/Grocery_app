import 'package:flutter/material.dart';
import 'package:grocery_app/screens/botton_nav_bar_screen.dart';
import 'package:grocery_app/screens/shop_screen.dart';
import 'package:grocery_app/widget/button.dart';

class OrderAccept extends StatelessWidget {
  const OrderAccept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assests/images/orderaccept.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 151.7),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58.38),
                  child: Image.asset(
                    "assests/images/ordermainsign.png",
                    width: 269.08,
                    height: 240.31,
                  ),
                ),
                const SizedBox(height: 66.67),
                const Text(
                  "Your Order has been \naccepted",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Your items has been placcd and is on \nit’s way to being processed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.92),
                  child: Column(
                    children: [
                      CustomButton(
                        text: "Track Order",
                        background: "0xff53B175",
                      ),
                      const SizedBox(height: 12),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BottonNavBarScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Back to Home",
                          style: TextStyle(
                            color: Color(0xff181725),
                            fontSize: 18,
                            fontWeight: FontWeight(600)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 38.5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
