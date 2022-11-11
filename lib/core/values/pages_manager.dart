import 'package:get/route_manager.dart';
import 'package:test_app/UI/screens/bottom_nav.dart';
import 'package:test_app/UI/screens/cart.dart';
import 'package:test_app/UI/screens/categories/categories_details.dart';
import 'package:test_app/UI/screens/categories/categroies.dart';
import 'package:test_app/UI/screens/home.dart';
import 'package:test_app/UI/screens/my_account.dart';
import 'package:test_app/bindings/bottom_nav_binding.dart';
import 'package:test_app/bindings/cart_binding.dart';
import 'package:test_app/bindings/categories_binding.dart';
import 'package:test_app/bindings/categories_details_binding.dart';
import 'package:test_app/bindings/home_binding.dart';
import 'package:test_app/bindings/myaccount_binding.dart';

class PagesManager {
  static var getPages = [
    GetPage(name: "/bottomNav", page: () => BottomNavScreen(), bindings: [
      BottomNavBinding(),
      HomeBinding(),
      CategoriesBinding(),
      CartBinding()
    ]),
    GetPage(
        name: "/home", page: () => const HomeScreen(), binding: HomeBinding()),
    GetPage(
        name: "/category",
        page: () => CategoriesScreen(),
        binding: CategoriesBinding()),
    GetPage(
        name: "/catDetails",
        page: () => CategoriesDetailsScreen(),
        binding: CategoriesDetailsBindins()),
    GetPage(
        name: "/cart", page: () => const CartScreen(), binding: CartBinding()),
    GetPage(
        name: "/myAcc",
        page: () => const MyAccountScreen(),
        binding: MyAccountBinding()),
  ];
}
