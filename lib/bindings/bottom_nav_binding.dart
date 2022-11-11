import 'package:get/get.dart';
import 'package:test_app/controller/bottom_nav_controller.dart';

class BottomNavBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavController());
  }
}
