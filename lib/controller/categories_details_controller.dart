import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:test_app/core/values/values_manager.dart';
import 'package:test_app/models/categories_details_model.dart';
import 'package:test_app/services/dio.dart';
import 'dart:convert';

class CategoriesDetailsController extends GetxController {
  // ignore: prefer_typing_uninitialized_variables
  var id;
  @override
  void onInit() {
    super.onInit();
    id = Get.arguments["id"];
    getSubCat();
  }

  dio.FormData? formData;
  RxBool isLoading = true.obs;
  CategoriesDetailsModel? categoriesDetailsModel;
  void getSubCat() async {
    try {
      formData = dio.FormData.fromMap({"ProductsTypeID": id});
      dio.Response value = await DioService.postData(
          path: ValuesManager.subCategoriesPath, data: formData!);
      if (value.statusCode == 200) {
        var res = json.decode(value.data);
        categoriesDetailsModel = CategoriesDetailsModel.fromJson(res);
        isLoading.value = false;
      }
    } catch (e) {
      throw Exception("can't get details");
    }
  }
}
