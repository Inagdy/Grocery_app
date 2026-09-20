import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddingRemoveCounter extends StatefulWidget {
  final int count;
  final bool borderRadios;
  const AddingRemoveCounter({super.key, this.count = 1, this.borderRadios = false});
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          width: 45.67.w,
          height: 45.67.h,
          decoration: BoxDecoration(
            border: widget.borderRadios?
            null
            :Border.all(color: Color(0xffE2E2E2)),
            borderRadius: widget.borderRadios
                ? null
                : BorderRadius.all(Radius.circular(17)),
          ),
          child: IconButton(
            onPressed: () {
              if (count > 0) {
                setState(() {
                  count--;
                });
              }
            },
            icon: Icon(Icons.remove, color: Color(0xffB3B3B3)),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 45.67.w,
          height: 45.67.h,
          decoration: BoxDecoration(
            border: widget.borderRadios
                ? Border.all(color: Color(0xffB3B3B3))
                : null,
            borderRadius: widget.borderRadios
                ? BorderRadius.all(Radius.circular(17))
                : null,
          ),
          child: Text(
            count.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
              color: Color(0xff181725),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 45.67.w,
          height: 45.67.h,
          decoration: BoxDecoration(
            border: widget.borderRadios
                ? null
                : Border.all(color: Color(0xffB3B3B3)),
            borderRadius: widget.borderRadios
                ? null
                : BorderRadius.all(Radius.circular(17)),
          ),
          child: IconButton(
            onPressed: () {
              if (count >= 0) {
                setState(() {
                  count++;
                });
              }
            },
            icon: Icon(Icons.add, color: Color(0xFF43B879)),
          ),
        ),
      ],
    );
  }
}
