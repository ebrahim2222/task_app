import 'package:get/get.dart';
import 'package:test_app/core/values/values_manager.dart';
import 'package:test_app/models/categories_model.dart';
import 'package:test_app/services/dio.dart';
import 'package:dio/dio.dart' as dio;
import 'dart:convert';

class CategoriesController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getCategories();
  }

  RxBool isLoading = true.obs;
  CategoriesModel? categoriesModel;
  void getCategories() async {
    try {
      dio.Response value = await DioService.getData(
        path: ValuesManager.categoriesPath,
      );
      if (value.statusCode == 200) {
        var res = json.decode(value.data);
        categoriesModel = CategoriesModel.fromJson(res);
        isLoading.value = false;
      }
    } catch (e) {
      throw Exception("can't get categories");
    }
  }
}
