import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_api/app/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    defaultTransition: Transition.fade,
    getPages: AppPages.routes,
  ));
}
