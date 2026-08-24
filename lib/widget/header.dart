

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String headerMainText;
  final String secandMainText;

  const Header({
    super.key,
    required this.headerMainText,
    required this.secandMainText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 28.42),
        Center(
          child: Image.asset(
            "assests/images/carrot.png",
            width: 47.84,
            height: 55.64,
          ),
        ),
        const SizedBox(height: 100.21),
        Text(
          headerMainText,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 26,
            letterSpacing: 0,
            color: Color(0xff181725),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          secandMainText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xff7C7C7C),
            letterSpacing: 0,
          ),
        ),
      ],
    );
  }
}