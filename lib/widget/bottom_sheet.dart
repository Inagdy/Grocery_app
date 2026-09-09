
import 'package:flutter/material.dart';

class customBottomSheet extends StatelessWidget {
  final String lefttext;
  final String rigthtext;
  final bool? hasicon; 
  final IconData? iconData;

  const customBottomSheet({super.key, required this.lefttext, required this.rigthtext, this.hasicon, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25.01),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  lefttext,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff7C7C7C),
                  ),
                ),
              ),
              if (hasicon == true)
                Icon(iconData)
              else
                Text(
                  rigthtext,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
              const SizedBox(width: 15),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25.01),
         child: Divider(),
       ),
      ],
    );
  }
}