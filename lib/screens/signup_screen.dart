import 'package:flutter/material.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              SizedBox(height: 28.42),
              Center(
                child: Image.asset(
                  "assests/images/carrot.png",
                  width: 47.84,
                  height: 55.64,
                ),
              ),
              SizedBox(height: 100.21),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 26,
                  letterSpacing: 0,
                  color: Color(0xff181725),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7C7C7C),
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(label: "Username"),
              SizedBox(height: 30),
              CustomTextField(label: "Email"),
              SizedBox(height: 30),
              CustomTextField(label: "password", suffixIcon: Icons.visibility),
              SizedBox(height: 20),
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
              SizedBox(height: 30.03),
              CustomButton(text: "Sign Up"),
              SizedBox(height: 25),
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
                  Text(
                    " Singup",
                    style: TextStyle(
                      fontWeight: FontWeight(600),
                      color: Color(0xff53B175),
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
