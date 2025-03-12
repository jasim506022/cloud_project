import 'package:cloud_project/res/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';

import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';
import '../../res/app_function.dart';
import '../../res/app_string.dart';
import 'custom_list_tile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightWhite,
      appBar: _buildAppBar(),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 7),
          child: _buildProfileOptions()),
    );
  }

//the AppBar widget
  AppBar _buildAppBar() {
    return AppBar(
        toolbarHeight: 80,
        leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.blue.shade50),
            child: const Icon(IconlyBroken.profile,
                size: 30, color: AppColors.blue)),
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppString.profileName, style: AppFontStyle.mediumLargeTitle()),
            Text(AppString.email,
                style: AppFontStyle.mediumTextStyle()
                    .copyWith(color: AppColors.grey))
          ],
        ),
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.close))
        ]);
  }

//list of profile options in a separate method
  ListView _buildProfileOptions() {
    return ListView.separated(
      itemCount: AppConstant.profileOptionsList.length,
      separatorBuilder: (context, index) => (index == 1 || index == 6)
          ? AppFunction.verticalSpace(20)
          : const SizedBox.shrink(),
      itemBuilder: (context, index) {
        final option = AppConstant.profileOptionsList[index];
        final isLastLength = AppConstant.profileOptionsList.length;
        return CustomListTile(
          onTap: () {},
          icon: option["icon"],
          title: option["title"],
          iconColor:
              index == isLastLength - 1 ? AppColors.red : AppColors.black,
          textColor:
              index == isLastLength - 1 ? AppColors.red : AppColors.black,
        );
      },
    );
  }
}
