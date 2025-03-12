import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(icon, size: 30, color: AppColors.blue),
      title: Text(title),
      centerTitle: false,
      actions: [
        IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.close))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
