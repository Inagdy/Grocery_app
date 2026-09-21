

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/widget/spacing.dart';
import 'package:grocery_app/screens/botton_nav_bar_screen.dart';
import 'package:grocery_app/widget/button.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  static const firstBackgroundColor = 0xff53B175;

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 700;

    return Scaffold(
      body: Container(
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assests/images/wel.png"),
            fit:  BoxFit.cover,
          ),
        ),
        
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center ,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Container(

            // )
            Image(
              image: AssetImage("assests/images/cart.png"),
              width: 48.47.w,
              height: 56.36.h,
            ),
            35.66.vertical,
            
              Text(
              'Welcome \nto our store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                
                fontSize:isWide?10.sp: 48.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          
            19.vertical,
            Text(
              'Get your groceries in as fast as one hour',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xB2FCFCFC),
                fontSize:isWide?10.sp: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            30.88.vertical,
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
                      builder: (context) => LoginScreen(),
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
