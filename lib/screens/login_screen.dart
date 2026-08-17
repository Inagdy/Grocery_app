import 'package:flutter/material.dart';
import 'package:grocery_app/widget/button.dart';
import 'package:grocery_app/widget/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 26,
                  letterSpacing: 0,
                  color: Color(0xff181725),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Enter your emails and password",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight(400),
                  color: Color(0xff7C7C7C),
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 40),
              CustomTextField(label: "Email"),
              SizedBox(height: 30),
              CustomTextField(label: 'Password', suffixIcon: Icons.visibility),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight(400),
                    fontSize: 14,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomButton(text: "Login"),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
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
