import 'package:cloud_project/view/cart/cart_page.dart';
import 'package:flutter/material.dart';

import '../../res/app_colors.dart';
import '../../res/app_font_style.dart';
import '../../res/app_string.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CoustomAppBar(
        icon: Icons.search,
        title: AppString.searchHint,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
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
                                color: AppColors.grey.withOpacity(.6),
                                width: .5)),
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
            ),
          ],
        ),
      ),
    );
  }
}
