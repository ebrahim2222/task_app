// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_app/controller/categories_controller.dart';

import '../../core/values/color_manager.dart';
import '../../core/values/font_size_manager.dart';
import '../../core/values/size_manager.dart';
import '../../core/values/style_manager.dart';

class ItemLeftImage extends StatelessWidget {
  final int index;
  final CategoriesController controller;

  const ItemLeftImage({Key? key, required this.index, required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return Container(
        width: Get.width * 0.9,
        height: 110.h,
        decoration: BoxDecoration(
            color: HexColor(ColorManager.whiteColor),
            borderRadius: BorderRadius.circular(SizeManager.s8.w)),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(left: AppMargin.m18.w),
            width: Get.width * 0.2,
            child: Image.network(
                controller.categoriesModel!.data![index].productsTypeImage!,
                loadingBuilder: (
              BuildContext context,
              Widget child,
              ImageChunkEvent? loadingProgress,
            ) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  color: HexColor(ColorManager.appColor),
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            }),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                    right: AppMargin.m20.w, top: AppMargin.m12.h),
                width: Get.width * 0.4,
                child: Text(
                  controller
                      .categoriesModel!.data![index].productsTypeNameEnglish!,
                  textAlign: TextAlign.right,
                  style: getReqularStyle(
                      fontSize: FontSizeManager.s18.sp,
                      color: HexColor(ColorManager.secondColor)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    right: AppMargin.m20.w, top: AppMargin.m12.h),
                width: Get.width * 0.4,
                child: Text(
                  controller
                      .categoriesModel!.data![index].productsTypeDiscription!,
                  textAlign: TextAlign.right,
                  style: getReqularStyle(
                      fontSize: FontSizeManager.s12.sp,
                      color: HexColor(ColorManager.greyColor)),
                ),
              ),
            ],
          ),
        ]),
      );
    });
  }
}
