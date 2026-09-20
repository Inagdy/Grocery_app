import 'package:flutter/material.dart';
import 'package:grocery_app/screens/login_screen.dart';
import 'package:grocery_app/widget/spacing.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/header.dart';
import 'package:grocery_app/widget/text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
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
                headerMainText: "Sign Up",
                secandMainText: "Enter your credentials to continue",
              ),
              40.vertical,
              CustomTextField(label: "Username"),
              30.vertical,
              CustomTextField(label: "Email"),
              30.vertical,
              CustomTextField(label: "password", suffixIcon: Icons.visibility),
              20.vertical,
              Text.rich(
                TextSpan(
                  text: 'By continuing you agree to our',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff181725),
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Terms of service',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff53B175),
                      ),
                    ),
                    TextSpan(
                      text: ' \n and',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff181725),
                      ),
                    ),
                    TextSpan(
                      text: ' Privacy Policy.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ],
                ),
              ),
              30.03.vertical,
              CustomButton(
                onPressed: () {
                                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                text: "Sign Up",
                background: mainBackgroundColor.toString(),
                hasIcon: false,
              ),
              25.vertical,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      color: Color(0xff181725),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => LoginScreen()),
                      );
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                        fontWeight: FontWeight(600),
                        color: Color(0xff53B175),
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
