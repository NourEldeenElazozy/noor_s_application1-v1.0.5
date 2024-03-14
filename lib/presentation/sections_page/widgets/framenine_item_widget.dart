import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

// ignore: must_be_immutable


  @override
  Widget FramenineItemWidget(section) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 155.h,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  section,
                  style: CustomTextStyles.titleMediumBlack90004,
                ),
              ),
              /*
              CustomImageView(
                imagePath: ImageConstant.imgCasualTShirt,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
               */
            ],
          ),

          /*
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Text(
              "100 منتج",
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
           */
         // SizedBox(height: 8.v),
        ],
      ),
    );
  }
Widget FramenineItemWidget2(section) {
  return Container(

    padding: EdgeInsets.symmetric(
      horizontal: 9.h,
      vertical: 10.v,
    ),
    decoration: AppDecoration.outlineWhiteA.copyWith(

      borderRadius: BorderRadiusStyle.roundedBorder8,
    ),
    width: 160.h,
    child: Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                section,
                style: CustomTextStyles.titleMediumBlack90004,
              ),
            ),
            /*
              CustomImageView(
                imagePath: ImageConstant.imgCasualTShirt,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
               */
          ],
        ),

        /*
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Text(
              "100 منتج",
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
           */
        // SizedBox(height: 8.v),
      ],
    ),
  );
}

