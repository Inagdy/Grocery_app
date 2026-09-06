import 'package:flutter/material.dart';
import 'package:grocery_app/screens/botton_nav_bar_screen.dart';
import 'package:grocery_app/widget/button.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  static const firstBackgroundColor = 0xff53B175;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assests/images/wel.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Image(
              image: AssetImage("assests/images/cart.png"),
              width: 48.47,
              height: 56.36,
            ),
            const SizedBox(height: 35.66),
            const Text(
              'Welcome \nto our store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 19),
            const Text(
              'Get your groceries in as fast as one hour',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xB2FCFCFC),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 30.88),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 60),
              child: CustomButton(
                text: 'Get Started',
                background: firstBackgroundColor.toString(),
                hasIcon: false,
                haslefttag: false,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottonNavBarScreen(),
                    ),
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
