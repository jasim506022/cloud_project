import 'package:cloud_project/res/app_string.dart';
import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_font_style.dart';
import '../res/app_function.dart';
import '../res/app_image.dart';
import '../res/app_constant.dart';

class AppFooterWidget extends StatelessWidget {
  const AppFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubscriptionSection(),
          AppFunction.verticalSpace(45),
          const Divider(height: 1, color: AppColors.grey),
          AppFunction.verticalSpace(35),
          Image.asset(AppImage.appLogo),
          AppFunction.verticalSpace(20),
          _buildSocialMediaIcons(),
          AppFunction.verticalSpace(10),
          _buildFooterCategories()
        ],
      ),
    );
  }

  ///  the newsletter subscription section
  Widget _buildSubscriptionSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppString.newsletter,
            style: AppFontStyle.largeTitle().copyWith(color: AppColors.white)),
        AppFunction.verticalSpace(15),
        Row(
          children: [
            Expanded(
              flex: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppString.emailHint,
                  hintStyle: AppFontStyle.mediumTextStyle()
                      .copyWith(color: AppColors.grey),
                  fillColor: AppColors.white,
                  filled: true,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: AppColors.lightBlue,
                child: const Icon(Icons.send, color: AppColors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }

//social media icons section
  SizedBox _buildSocialMediaIcons() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: AppConstant.socialMediaIcons
            .map((social) => _buildSocialMediaIcon(social))
            .toList(),
      ),
    );
  }

  // Single social media icon
  Widget _buildSocialMediaIcon(Map<String, String> social) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        height: 50,
        width: 50,
        decoration:
            const BoxDecoration(color: AppColors.white, shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(social['asset']!),
        ),
      ),
    );
  }

  // Categories Section
  Widget _buildFooterCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppString.categories,
          style: AppFontStyle.titleTextStyle().copyWith(color: AppColors.white),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Divider(height: 1, color: AppColors.grey),
        ),
        ...AppConstant.footerCategoris.map((category) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Text(
                category,
                style: AppFontStyle.mediumTextStyle()
                    .copyWith(color: AppColors.white.withOpacity(0.35)),
              ),
            )),
      ],
    );
  }
}
