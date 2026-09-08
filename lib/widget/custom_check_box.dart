import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool ischecked;
  final String title;
  const CustomCheckbox({
    super.key,
    required this.ischecked,
    required this.title,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.ischecked;
  }

 @override
Widget build(BuildContext context) {
  return CheckboxListTile(
    contentPadding: EdgeInsets.zero,
    dense: true,
    visualDensity: const VisualDensity(
      horizontal: -4,
      vertical: -4,
    ),
    horizontalTitleGap: 0,
    minLeadingWidth: 0,

    title: Text(
      widget.title,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: !_isChecked
            ? const Color(0xff181725)
            : const Color(0xff53B175),
      ),
    ),

    controlAffinity: ListTileControlAffinity.leading,

    activeColor: const Color(0xff53B175),
    checkColor: const Color(0xffF2F3F2),

    value: _isChecked,
    onChanged: (bool? value) {
      setState(() {
        _isChecked = value ?? false;
      });
    },

    checkboxShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
}
