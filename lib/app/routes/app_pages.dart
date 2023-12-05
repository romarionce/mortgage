// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:mortgage/app/modules/main_page/main_page_bindings.dart';
import 'package:mortgage/app/modules/main_page/main_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () => const MainPageView(),
      binding: MainPageBinding(),
    ),
  ];
}
