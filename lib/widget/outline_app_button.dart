import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_font_style.dart';

class OutlineAppButton extends StatelessWidget {
  const OutlineAppButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: AppColors.blue, width: 1)),
        child: Text(
          title,
          style: AppFontStyle.buttonTextStyle().copyWith(color: AppColors.blue),
        ),
      ),
    );
  }
}
