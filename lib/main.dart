import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/routes/app_route.dart';
import 'package:cloud_project/res/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        initialRoute: RouteName.mainPage,
        getPages: AppRoute.appRoute());
  }

  ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
          titleTextStyle: AppFontStyle.mediumLargeTitle(),
          backgroundColor: AppColors.white,
          centerTitle: true,
          actionsIconTheme:
              const IconThemeData(color: AppColors.black, size: 30)),
      tabBarTheme: TabBarTheme(
        unselectedLabelStyle: AppFontStyle.mediumTextStyle(),
        labelStyle: AppFontStyle.buttonTextStyle(),
        dividerColor: Colors.transparent,
      ),
      cardTheme: const CardTheme(color: AppColors.white),
    );
  }
}
