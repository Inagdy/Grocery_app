import 'package:flutter/material.dart';
class HomeSectionTitle extends StatelessWidget {
  final String leftWord;

  const HomeSectionTitle({super.key, required this.leftWord});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                leftWord,
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 24,
                  color: Color(0xff181725),
                ),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xff53B175),
                ),
              ),
            ],
          );
  }
}