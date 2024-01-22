import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FramenineItemWidget extends StatelessWidget {
  const FramenineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "الأحذية",
                  style: CustomTextStyles.titleSmallBlack90003Bold,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCasualTShirt,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Text(
              "100 منتج",
              style: CustomTextStyles.bodySmallWhiteA700,
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
