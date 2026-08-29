import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  final IconData icon;
  final String dataText;
  const ContactDetails({super.key, required this.icon, required this.dataText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26.51, top: 20, bottom: 20),
              child: Icon(icon, weight: 18, size: 20),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.49),
                child: Text(
                  dataText,
                  style: TextStyle(
                    fontWeight: FontWeight(600),
                    fontSize: 16,
                    color: Color(0xff181725),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.24),
              child: Icon(
                Icons.arrow_forward_ios,
                weight: 8.4,
                size: 14,
                color: Color(0xff181725),
              ),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
