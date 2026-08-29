import 'package:flutter/material.dart';

class AddingRemoveCounter extends StatelessWidget {
  const AddingRemoveCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.remove, weight: 17, color: Color(0xffB3B3B3)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              alignment: Alignment.center,
              width: 45.67,
              height: 45.67,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffE2E2E2)),
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: Text(
                "1",
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xff181725),
                ),
              ),
            ),
          ),
          Icon(Icons.add, weight: 17, color: Color(0xff53B175)),
        ],
      ),
    );
  }
}
