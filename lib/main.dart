import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portfolio/app/core/constants/apptheme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      theme: AppTheme.darkTheme, 
      getPages: AppPages.routes,
    );
  }
}
