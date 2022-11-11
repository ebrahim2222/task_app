import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/controller/bottom_nav_controller.dart';
import 'package:test_app/core/values/color_manager.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final BottomNavController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx((() => Scaffold(
          body: controller.bottomNavScreens[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            items: controller.bottomNavItems,
            currentIndex: controller.currentIndex.value,
            onTap: (x) {
              controller.changeCurrentIndex(x);
            },
            selectedItemColor: HexColor(ColorManager.appColor),
            unselectedItemColor: HexColor(ColorManager.greyColor),
            type: BottomNavigationBarType.fixed,
          ),
        )));
  }
}
