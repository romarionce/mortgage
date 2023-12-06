import 'package:get/get.dart';
import 'package:mortgage/app/modules/home/home_controller.dart';
import 'package:mortgage/app/modules/main_page/main_page_controller.dart';
import 'package:mortgage/app/modules/mortgage/mortgage_controller.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MainPageController>(MainPageController());
    Get.lazyPut(() => MortgageController());
    Get.lazyPut(() => HomeController());
  }
}
