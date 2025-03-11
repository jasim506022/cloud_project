import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../res/app_colors.dart';
import '../../../res/app_font_style.dart';
import '../../../res/app_function.dart';
import '../../../res/app_string.dart';

class CreativeTeamWidget extends StatelessWidget {
  const CreativeTeamWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTeamIcon(),
        AppFunction.verticalSpace(15),
        RichText(
            text: TextSpan(
                text: "${AppString.ourCreative} ",
                style: AppFontStyle.largeTitle(),
                children: [
              TextSpan(
                  text: AppString.team,
                  style:
                      AppFontStyle.largeTitle().copyWith(color: AppColors.blue))
            ])),
        AppFunction.verticalSpace(15),
        Text(
          AppString.teamCreateDescription,
          textAlign: TextAlign.center,
          style: AppFontStyle.titleTextStyle(),
        ),
      ],
    );
  }

  Container _buildTeamIcon() {
    return Container(
      height: 120,
      width: 120,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.blue,
      ),
      child: const Icon(
        IconlyBold.user3,
        color: AppColors.white,
        size: 50,
      ),
    );
  }
}
