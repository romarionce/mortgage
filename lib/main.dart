import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mortgage/app/core/theme.dart';
import 'package:mortgage/app/services/storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await Get.putAsync(() => StorageService().init());
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeApp.getTheme(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
