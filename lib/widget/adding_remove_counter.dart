import 'package:flutter/material.dart';

class AddingRemoveCounter extends StatefulWidget {
  final int count;
  const AddingRemoveCounter({super.key, this.count = 1});

  @override
  State<AddingRemoveCounter> createState() => _AddingRemoveCounterState();
}

class _AddingRemoveCounterState extends State<AddingRemoveCounter> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () {
            if (count > 0) {
              setState(() {
                count--;
              });
            }
          },
          icon: Icon(Icons.remove, weight: 17, color: Color(0xffB3B3B3))),
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
                count.toString(),
                style: TextStyle(
                  fontWeight: FontWeight(600),
                  fontSize: 16,
                  color: Color(0xff181725),
                ),
              ),
            ),
          ),
          IconButton(onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Icon(Icons.add, weight: 17, color: Color(0xff53B175))),
        ],
      ),
    );
  }
}
