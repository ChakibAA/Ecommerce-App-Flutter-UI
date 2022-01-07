// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../../../Constant.dart';

// ignore: must_be_immutable
class LoginField extends StatelessWidget {
  LoginField({
    required this.label,
    required this.hint,
    required this.obscure,
    required this.textInputType,
    required this.icon,
    Key? key,
  }) : super(key: key);
  String label;
  String hint;
  bool obscure;
  TextInputType textInputType;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscure,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          icon,
          color: primaryColor,
        ),
        focusColor: primaryColor,
        fillColor: primaryColor,
        label: Text(
          label,
          style: const TextStyle(color: primaryColor),
        ),
        hintText: hint,
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.redAccent),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(20)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
