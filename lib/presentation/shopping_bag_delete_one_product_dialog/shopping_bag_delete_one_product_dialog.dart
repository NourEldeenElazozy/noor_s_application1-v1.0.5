import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

class ShoppingBagDeleteOneProductDialog extends StatelessWidget {
  const ShoppingBagDeleteOneProductDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SingleChildScrollView(child: _buildSeven(context));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 43.h, right: 39.h, bottom: 459.v),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 19.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text("حذف المنتج",
                        style: CustomTextStyles.labelLargeBlack90002)),
                CustomImageView(
                    imagePath: ImageConstant.imgCancel1,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 22.h))
              ]),
              SizedBox(height: 39.v),
              Align(
                  alignment: Alignment.center,
                  child: Text("هل تريد حذف منتج حذاء رياضي طبي؟",
                      style: CustomTextStyles.titleSmallGray90003)),
              SizedBox(height: 57.v),
              Padding(
                  padding: EdgeInsets.only(left: 68.h, right: 47.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtWidget(context);
                            },
                            child: Text("رجوع",
                                style: CustomTextStyles.labelLargePrimary13)),
                        Text("حذف المنتج",
                            style: CustomTextStyles.labelLargePrimary13)
                      ])),
              SizedBox(height: 8.v)
            ]));
  }

  /// Navigates to the shoppingBagScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagScreen);
  }
}
