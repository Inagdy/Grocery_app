import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/screens/botton_nav_bar_screen.dart';
import 'package:grocery_app/screens/signup_screen.dart';
import 'package:grocery_app/widget/spacing.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/header.dart';
import 'package:grocery_app/widget/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const mainBackgroundColor = 0xff53B175;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                headerMainText: "Login",
                secandMainText: "Enter your emails and password",
              ),
              40.vertical,
              CustomTextField(label: "Email"),
              30.vertical,
              CustomTextField(label: 'Password', suffixIcon: Icons.visibility),
              20.vertical,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight(400),
                    fontSize: 14.sp,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              30.vertical,
              CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => BottonNavBarScreen()),
                  );
                },
                text: "Login",
                background: mainBackgroundColor.toString(),
                hasIcon: false,
              ),
              25.vertical,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      color: Color(0xff181725),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignupScreen()),
                  );
                    },
                    child: Text(
                    
                      " Singup",
                      style: TextStyle(
                        fontWeight: FontWeight(600),
                        color: Color(mainBackgroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
