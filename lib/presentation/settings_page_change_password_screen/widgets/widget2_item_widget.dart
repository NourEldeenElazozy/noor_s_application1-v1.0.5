import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  const Widget2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: Text(
              "يرجى كتابة الرمز السري القديم",
              style: CustomTextStyles.titleSmallErrorContainerBold_1,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.outlineBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVisibilityFillGray50001,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 1.v,
                ),
                child: Text(
                  "الرمز ااسري",
                  style: CustomTextStyles.bodySmallOnError,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
