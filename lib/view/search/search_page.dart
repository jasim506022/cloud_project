import 'package:flutter/material.dart';

import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';
import '../../res/app_string.dart';
import '../../widget/custom_app_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        icon: Icons.search,
        title: AppString.searchHint,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            _buildSearchField(),
          ],
        ),
      ),
    );
  }

//search input and button for clarity
  Row _buildSearchField() {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(
                        color: AppColors.grey.withOpacity(.6), width: .5)),
                hintText: AppString.searchHint,
                hintStyle: AppFontStyle.mediumTextStyle()
                    .copyWith(color: AppColors.grey),
                fillColor: AppColors.white,
                filled: true,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 50,
            color: AppColors.blue,
            child: const Icon(Icons.search, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
