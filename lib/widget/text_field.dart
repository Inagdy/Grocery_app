import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final IconData? suffixIcon;
  final bool? searchFeild;

  const CustomTextField({
    super.key,
    this.label,
    this.suffixIcon,
    this.searchFeild,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: label == ('password')
          ? true
          : false, // Hides the characters as dots/stars
      enableSuggestions: true, // Disables keyboard suggestions
      autocorrect: true, // Disables autocorrect
      decoration: InputDecoration(
        labelText: searchFeild == true ? null : label,
        hintText: searchFeild == true ? "Search Store" : null,
        hintStyle: searchFeild == true
            ? const TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              )
            : null,
        filled: searchFeild == true,
        fillColor: searchFeild == true ? const Color(0xffF2F3F2) : null,
        enabledBorder: searchFeild == true
            ? OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              )
            : UnderlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE2E2E2)),
              ),
        focusedBorder: searchFeild == true
            ? OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              )
            : UnderlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffE2E2E2)),
              ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        prefixIcon: searchFeild == true
            ? Padding(
                padding: const EdgeInsets.only(left: 15, right: 9.81),
                child: Icon(
                  Icons.search_rounded,
                  size: 18.21,
                  color: Color(0xff181B19),
                ),
              )
            : null,
        prefixIconConstraints: searchFeild == true
            ? const BoxConstraints(maxWidth: 43, minHeight: 40)
            : null,
      ),
      onTapOutside: (value) {
        FocusScope.of(context).unfocus();
      },
      cursorColor: searchFeild == true ? const Color(0xff53B175) : null,
    );
  }
}
