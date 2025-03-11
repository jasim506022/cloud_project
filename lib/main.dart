import 'package:cloud_project/res/app_colors.dart';
import 'package:cloud_project/res/app_font_style.dart';
import 'package:cloud_project/res/app_route.dart';
import 'package:cloud_project/res/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/main/main_page.dart.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
            titleTextStyle: AppFontStyle.mediumLargeTitle(),
            backgroundColor: AppColors.white,
            centerTitle: true,
            actionsIconTheme: IconThemeData(color: AppColors.black, size: 30)),
        tabBarTheme: TabBarTheme(
          unselectedLabelStyle: AppFontStyle.mediumTextStyle(),
          labelStyle: AppFontStyle.buttonTextStyle(),
          dividerColor: Colors.transparent,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.mainPage,
      getPages: AppRoute.appRoute(),
    );
  }
}
