import 'package:flutter/material.dart';

import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.textColor,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color textColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 3),
        margin: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(7)),
        child: ListTile(
          leading: Icon(icon, size: 25, color: iconColor),
          title: Text(title,
              style: AppFontStyle.mediumBoldTextStyle()
                  .copyWith(color: textColor)),
        ),
      ),
    );
  }
}
