import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class K0ItemWidget extends StatelessWidget {
  K0ItemWidget({
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
          SizedBox(height: 1.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "أسود",
                    style: theme.textTheme.bodySmall,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPaletteFill1W,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 2.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 159.h,
            margin: EdgeInsets.only(
              left: 9.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "65.0 د.ل",
                  style: theme.textTheme.titleSmall,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "الماركة : Nike",
                    style: CustomTextStyles.bodySmallErrorContainer_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
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
