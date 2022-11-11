import 'package:get/get.dart';
import 'package:test_app/controller/maaccount_controller.dart';

class MyAccountBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MyAccountController());
  }
}
