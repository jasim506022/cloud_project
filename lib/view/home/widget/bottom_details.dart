import 'package:flutter/material.dart';

import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_image.dart';
import '../../../res/cons.dart';

class BottomDetails extends StatelessWidget {
  const BottomDetails({
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
          _buildNewsletterSection(),
          AppFunction.verticalSpace(45),
          const Divider(height: 1, color: AppColors.grey),
          AppFunction.verticalSpace(35),
          Image.asset(AppImage.appLogo),
          AppFunction.verticalSpace(20),
          _buildLogoAndSocialIcons(),
          AppFunction.verticalSpace(10),
          _buildCategorySection()
        ],
      ),
    );
  }

  // Newsletter Subscription Section
  Widget _buildNewsletterSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Subscribe to our weekly newsletter",
          style: AppFontStyle.largeTitle().copyWith(color: AppColors.white),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              flex: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your Email",
                  hintStyle: AppFontStyle.mediumTextStyle()
                      .copyWith(color: AppColors.grey),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                color: const Color.fromARGB(255, 7, 218, 255),
                child: const Icon(Icons.send, color: AppColors.black),
              ),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox _buildLogoAndSocialIcons() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: AppColors.white, shape: BoxShape.circle),
            ),
          );
        },
      ),
    );
  }

  // Categories Section
  Widget _buildCategorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: AppFontStyle.titleTextStyle().copyWith(color: AppColors.white),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: Divider(height: 1, color: AppColors.grey),
        ),
        ...categoriesBttom.map((category) => Padding(
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
