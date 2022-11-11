import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/UI/components/category_item_left_image.dart';
import 'package:test_app/controller/categories_controller.dart';
import 'package:test_app/core/values/color_manager.dart';
import 'package:test_app/core/values/size_manager.dart';
import '../../components/category_item_right_image.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  final CategoriesController controller = Get.put(CategoriesController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(Get.width, Get.height),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Obx((() => controller.isLoading.value == true
            ? const Center(child: CircularProgressIndicator.adaptive())
            : Scaffold(
                appBar: AppBar(
                  title: const Text('Categories'),
                  centerTitle: true,
                  backgroundColor: HexColor(ColorManager.whiteColor),
                ),
                body: Container(
                  height: Get.height,
                  width: Get.width,
                  margin: EdgeInsets.only(
                    top: AppMargin.m16.h,
                    bottom: AppMargin.m16.h,
                  ),
                  child: ListView.builder(
                    itemBuilder: (context, int index) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed("/catDetails", arguments: {
                            "id": controller
                                .categoriesModel!.data![index].productsTypeID
                          });
                        },
                        child: Container(
                          child: index.isEven
                              ? Container(
                                  margin: EdgeInsets.fromLTRB(
                                      AppMargin.m20.w,
                                      AppMargin.m10.w,
                                      AppMargin.m20.w,
                                      AppMargin.m10.w),
                                  child: ItemRightImage(
                                    index: index,
                                    controller: controller,
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.all(20),
                                  child: ItemLeftImage(
                                    index: index,
                                    controller: controller,
                                  ),
                                ),
                        ),
                      );
                    },
                    itemCount: controller.categoriesModel!.data!.length,
                  ),
                ),
              )));
      },
    );
  }
}
