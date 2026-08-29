import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool hasIcon;
  final IconData? iData;

  final String background;
  const CustomButton({
    super.key,
    required this.text,
    required this.background,
    this.hasIcon = false,
    this.iData,
  });

@override
Widget build(BuildContext context) {
  return InkWell(
    onTap: () {},
    borderRadius: BorderRadius.circular(19),
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 25.4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color(int.parse(background)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (hasIcon)
            Positioned(
              left: 25.17,
              child: Icon(
                iData,
                color: const Color(0xFF43B879),
                size: 30,
              ),
            ),

          Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: hasIcon
                    ? const Color(0xFF43B879)
                    : const Color(0xffFFF9FF),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
}
