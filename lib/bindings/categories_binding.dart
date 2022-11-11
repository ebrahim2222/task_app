import 'package:get/get.dart';
import 'package:test_app/controller/categories_controller.dart';

class CategoriesBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CategoriesController());
  }
}
