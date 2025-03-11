import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_font_style.dart';

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        side: const BorderSide(color: AppColors.blue, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        title,
        style: AppFontStyle.buttonTextStyle().copyWith(color: AppColors.blue),
      ),
    );
  }
}
