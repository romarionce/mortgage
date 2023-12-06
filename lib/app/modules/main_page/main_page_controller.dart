import 'package:get/get.dart';
import 'package:mortgage/app/modules/home/home_view.dart';
import 'package:mortgage/app/modules/mortgage/mortgage_view.dart';
import 'package:mortgage/app/modules/profile/profile_view.dart';
import 'package:mortgage/app/routes/app_pages.dart';

class MainPageController extends GetxController {
  var tabIndex = 0.obs;
  int get activeTab => tabIndex.value;

  void setActive(index) => tabIndex.value = index;

  var pages = [
    const HomeView(),
    const MortgageView(),
    const ProfileView(),
  ];

  List<PageItem> pagesItems = [
    (icon: 'Home', route: Routes.HOME),
    (icon: 'Mortgage', route: Routes.MORTGAGE),
    (icon: 'Profile', route: Routes.PROFILE),
  ];
}

typedef PageItem = ({
  String icon,
  String route,
});
