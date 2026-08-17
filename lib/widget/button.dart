import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xff53B175),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Color(0xffFFF9FF),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
