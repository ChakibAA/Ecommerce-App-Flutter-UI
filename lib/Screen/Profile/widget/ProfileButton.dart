// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../../Constant.dart';

// ignore: must_be_immutable
class ProfileButton extends StatelessWidget {
  ProfileButton({
    required this.title,
    required this.iconData,
    required this.onPressed,
    this.suffixIcon,
    Key? key,
  }) : super(key: key);

  String title;
  IconData iconData;
  // ignore: prefer_typing_uninitialized_variables
  var onPressed;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      padding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            iconData,
            color: primaryColor,
            size: 22,
          ),
          const SizedBox(width: 20),
          Expanded(child: Text(title)),
          suffixIcon != null
              ? suffixIcon!
              : const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
