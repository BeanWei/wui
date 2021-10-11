import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "WUI",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      defaultTransition: Transition.native,
    ),
  );
}
