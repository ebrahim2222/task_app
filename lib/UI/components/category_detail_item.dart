// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:test_app/controller/categories_details_controller.dart';

import '../../core/values/color_manager.dart';
import '../../core/values/font_size_manager.dart';
import '../../core/values/size_manager.dart';
import '../../core/values/style_manager.dart';

class CategoryDetailItem extends StatelessWidget {
  final int? index;
  final CategoriesDetailsController? controller;
  const CategoryDetailItem({
    Key? key,
    this.index,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(SizeManager.s8.w),
                border: Border.all(
                    color: HexColor(ColorManager.borderColor),
                    width: SizeManager.s1)),
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(
                      right: SizeManager.s8.w, top: SizeManager.s18.h),
                  alignment: Alignment.centerRight,
                  child: const ImageIcon(
                      AssetImage("assets/images/group_1749.png"))),
              Container(
                height: 140.h,
                margin: EdgeInsets.only(bottom: AppMargin.m14.h),
                child: Image.network(
                    controller!.categoriesDetailsModel!.data![index!]
                        .productsFirstImage!, loadingBuilder: (
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
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: AppMargin.m8.h),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: SizeManager.s20,
                ),
                getText(
                  text: controller!
                      .categoriesDetailsModel!.data![index!].productRate!,
                  style: getReqularStyle(
                      fontSize: FontSizeManager.s14.sp,
                      color: HexColor(ColorManager.secondColor)),
                ),
                Container(
                  margin: EdgeInsets.only(left: AppMargin.m4.w),
                  child: getText(
                    text:
                        "(${controller!.categoriesDetailsModel!.data![index!].productTotalRates!})",
                    style: getReqularStyle(
                        fontSize: FontSizeManager.s12.sp,
                        color: HexColor(ColorManager.greyColor)),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: AppMargin.m6.h),
            width: Get.width * 0.5,
            child: getText(
              text: controller!
                  .categoriesDetailsModel!.data![index!].productsName!,
              style: getReqularStyle(
                  fontSize: FontSizeManager.s14.sp,
                  color: HexColor(ColorManager.secondColor)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: AppMargin.m6.h),
            child: Row(
              children: [
                getText(
                  text:
                      "ILS ${controller!.categoriesDetailsModel!.data![index!].productsPrice!}",
                  style: getReqularStyle(
                      fontSize: FontSizeManager.s14.sp,
                      color: HexColor(ColorManager.secondColor)),
                ),
                Container(
                  margin: EdgeInsets.only(left: AppMargin.m6.h),
                  child: getText(
                      text:
                          "ILS ${controller!.categoriesDetailsModel!.data![index!].productsOfferPrice!}",
                      style: TextStyle(
                          fontSize: FontSizeManager.s14.sp,
                          color: HexColor(ColorManager.greyColor),
                          decoration: TextDecoration.lineThrough)),
                ),
              ],
            ),
          )
        ],
      );
    });
  }

  Widget getText({text, style}) {
    return Text(
      text,
      style: style,
    );
  }
}
