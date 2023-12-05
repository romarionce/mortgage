import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mortgage/app/core/colors.dart';
import 'package:mortgage/app/modules/main_page/main_page_controller.dart';
import 'package:mortgage/app/modules/main_page/widgets/draw_navbar_icon.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() => IndexedStack(
              index: controller.activeTab,
              children: controller.pages,
            )),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          enableFeedback: true,
          elevation: 8,
          currentIndex: controller.activeTab,
          onTap: controller.setActive,
          items: controller.pagesItems
              .map(
                (e) => BottomNavigationBarItem(
                  icon: DrawNavbarIcon(icon: e.icon),
                  activeIcon: DrawNavbarIcon(icon: e.icon, active: true),
                  label: e.icon,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
