import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/UI/components/category_detail_item.dart';
import 'package:test_app/controller/categories_details_controller.dart';
import 'package:test_app/core/values/size_manager.dart';

import '../../../core/values/color_manager.dart';
import '../../../core/values/font_size_manager.dart';
import '../../../core/values/style_manager.dart';

class CategoriesDetailsScreen extends StatelessWidget {
  CategoriesDetailsScreen({super.key});
  final CategoriesDetailsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(Get.width, Get.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Obx((() => controller.isLoading.value == true
              ? Container(
                  color: HexColor(ColorManager.backgroundColor),
                  width: Get.width,
                  height: Get.height,
                  child:
                      const Center(child: CircularProgressIndicator.adaptive()))
              : Scaffold(
                  appBar: AppBar(
                    leading: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                          GetPlatform.isAndroid
                              ? Icons.arrow_back
                              : Icons.arrow_back_ios_outlined,
                          color: HexColor(ColorManager.secondColor)),
                    ),
                    title: Container(
                      margin: EdgeInsets.only(top: AppMargin.m8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(controller.categoriesDetailsModel!.data![0]
                              .productsTypeNameEnglish!),
                          Text(
                            "${controller.categoriesDetailsModel!.data!.length} item",
                            style: getReqularStyle(
                                fontSize: FontSizeManager.s14.sp,
                                color: HexColor(ColorManager.greyColor)),
                          ),
                        ],
                      ),
                    ),
                    centerTitle: true,
                  ),
                  body: Container(
                    padding: EdgeInsets.all(AppPadding.p16.w),
                    width: Get.width,
                    height: Get.height,
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 6 / 13,
                      crossAxisSpacing: SizeManager.s14.w,
                      mainAxisSpacing: 10.h,
                      children: List.generate(
                          controller.categoriesDetailsModel!.data!.length,
                          (index) => CategoryDetailItem(
                              controller: controller, index: index)),
                    ),
                  ))));
        });
  }
}
