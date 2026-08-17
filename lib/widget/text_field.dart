import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final  String label;
  final IconData? suffixIcon;

  const CustomTextField({super.key, required this.label, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: label == ('password') ? true : false, // Hides the characters as dots/stars
      enableSuggestions: true, // Disables keyboard suggestions
      autocorrect: true, // Disables autocorrect
      decoration: InputDecoration(
        labelText: label,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE2E2E2)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE2E2E2)),
        ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
      onTapOutside: (value){FocusScope.of(context).unfocus();},
    );
  }
}
