import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/UI/screens/cart.dart';
import 'package:test_app/UI/screens/categories/categroies.dart';
import 'package:test_app/UI/screens/home.dart';
import 'package:test_app/UI/screens/my_account.dart';
import 'package:test_app/core/values/icons_manager.dart';
import 'package:test_app/core/values/size_manager.dart';
import 'package:test_app/core/values/values_manager.dart';

class BottomNavController extends GetxController {
  var bottomNavItems = [
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p8),
          child: ImageIcon(AssetImage(IconsManager.homeIcon)),
        ),
        label: ValuesManager.home),
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p8),
          child: ImageIcon(AssetImage(IconsManager.categoryIdon)),
        ),
        label: ValuesManager.category),
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p8),
          child: ImageIcon(AssetImage(IconsManager.myAccountIcon)),
        ),
        label: ValuesManager.myAccount),
    const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: AppPadding.p8),
          child: ImageIcon(AssetImage(IconsManager.cartIcon)),
        ),
        label: ValuesManager.cart)
  ];

  var bottomNavScreens = [
    const HomeScreen(),
    CategoriesScreen(),
    const MyAccountScreen(),
    const CartScreen()
  ];

  RxInt currentIndex = 0.obs;
  changeCurrentIndex(val) {
    currentIndex.value = val;
  }
}
