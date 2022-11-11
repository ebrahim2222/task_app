import 'package:get/get.dart';
import 'package:test_app/controller/categories_details_controller.dart';

class CategoriesDetailsBindins implements Bindings {
  @override
  void dependencies() {
    Get.put(CategoriesDetailsController());
  }
}
