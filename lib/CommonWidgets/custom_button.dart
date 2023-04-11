import 'package:flutter/material.dart';

import '../Constants/get_scope_colors.dart';

class CustomButton extends StatelessWidget {
  String text;
  Function() onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: GetScopeColors.btnBgColor,
          foregroundColor: GetScopeColors.whiteColor,
          shadowColor: GetScopeColors.logoBgColor,
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Text(text),
        ),
      ),
    );
  }
}
