import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FramethirteenItemWidget extends StatelessWidget {
  FramethirteenItemWidget({
    Key? key,
    this.onTapImgWidget,
    this.onTaptf,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgWidget;

  VoidCallback? onTaptf;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 173.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 167.v,
            width: 173.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle12,
                  height: 167.v,
                  width: 173.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                  alignment: Alignment.center,
                  onTap: () {
                    onTapImgWidget!.call();
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    right: 9.h,
                  ),
                  child: CustomIconButton(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    padding: EdgeInsets.all(3.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFavoriteFill0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "40د.ل",
                      textAlign: TextAlign.right,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "أسود",
                      textAlign: TextAlign.right,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPaletteFill1W,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(left: 6.h),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "65.0 د.ل",
                textAlign: TextAlign.right,
                style: theme.textTheme.titleSmall!.copyWith(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 48.h,
                  top: 3.v,
                ),
                child: Text(
                  "الماركة : Nike",
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.bodySmallErrorContainer_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 11.v),
          CustomElevatedButton(
            height: 26.v,
            width: 153.h,
            text: "إضافة إلى السلة",
            leftIcon: Container(
              margin: EdgeInsets.only(right: 11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL5,
            buttonTextStyle: theme.textTheme.labelLarge!,
            onPressed: () {
              onTaptf!.call();
            },
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
