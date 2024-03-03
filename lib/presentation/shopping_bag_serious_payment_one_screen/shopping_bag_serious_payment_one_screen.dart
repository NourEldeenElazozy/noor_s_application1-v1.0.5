import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_drop_down.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShoppingBagSeriousPaymentOneScreen extends StatelessWidget {
  ShoppingBagSeriousPaymentOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildWidget1(context),
                  SizedBox(height: 18.v),
                  _buildArrowLeft(context),
                  SizedBox(height: 36.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 50.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 13.v),
                        decoration: AppDecoration.fillGray40003.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder25),
                        child: Text("2", style: theme.textTheme.titleLarge)),
                    Padding(
                        padding: EdgeInsets.only(top: 25.v, bottom: 24.v),
                        child: SizedBox(
                            width: 43.h,
                            child: Divider(
                                color: appTheme.gray40003, indent: 2.h))),
                    Container(
                        width: 50.adaptSize,

                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 13.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder25),
                        child: Text("1", style: theme.textTheme.titleLarge))
                  ]),
                  SizedBox(height: 14.v),

                  SizedBox(height: 40.v),



                  _buildTextInputAndLabel1(context),
                  SizedBox(height: 37.v),

                  CustomElevatedButton(
                      text: "استمرار",
                      margin: EdgeInsets.only(left: 32.h, right: 36.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumWhiteA700ExtraBold,
                      onPressed: () {
                        onTaptf(context);
                      }),

                  Container(
                      height: 68.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray50))
                ])))));
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.v),
        decoration: AppDecoration.outlineErrorContainer3,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.centerRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtWidget(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 3.v),
                            child: Text("محمد علي",
                                style: CustomTextStyles
                                    .labelLargeErrorContainer_1))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(14.h),
                        margin: EdgeInsets.only(left: 13.h),
                        onTap: () {
                          onTapImgCircleImage(context);
                        })
                  ])),
              SizedBox(height: 25.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                            child: Text("السعر الكلي  :  65د.ل",
                                style: CustomTextStyles.titleSmallGray80001)),
                        Spacer(flex: 49),
                        SizedBox(
                            height: 41.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1))),
                        Spacer(flex: 50),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 14.v),
                            child: Text("عدد المنتجات  :  1",
                                style: CustomTextStyles.titleSmallGray80001))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 27.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftErrorcontainer,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(top: 1.v, bottom: 4.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Text("اتمام عملية الشراء",
                  style: CustomTextStyles.titleSmallErrorContainer15)
            ]));
  }

  /// Section Widget


  /// Section Widget
  Widget _buildTextInputAndLabel1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Column(children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 17.h),
                  child: Text("عنوان الشارع",
                      style: CustomTextStyles.bodySmallErrorContainer))),
          SizedBox(height: 13.v),
          Container(
              height: 45.v,
              width: 364.h,
              decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(8.h),
                  border:
                      Border.all(color: appTheme.blueGray10004, width: 1.h)))
        ]));
  }

  /// Section Widget

  /// Section Widget


  /// Common widget
  Widget _buildFavoriteFILLZero(
    BuildContext context, {
    required String image,
  }) {
    return SizedBox(
        height: 167.v,
        width: 173.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: image,
              height: 167.v,
              width: 173.h,
              radius: BorderRadius.circular(8.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topRight,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(top: 9.v, right: 9.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder14),
                  child: Container(
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.circleBorder14),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFavoriteFill0,
                            height: 22.adaptSize,
                            width: 22.adaptSize,
                            alignment: Alignment.center),
                        CustomImageView(
                            imagePath: ImageConstant.imgFavoriteFill1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center)
                      ]))))
        ]));
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, bottom: 3.v),
          child: Text(widget,
              textAlign: TextAlign.right,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray80003))),
      CustomImageView(
          imagePath: ImageConstant.imgPaletteFill1W,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 6.h))
    ]);
  }

  /// Common widget
  Widget _buildSixHundredFifty(
    BuildContext context, {
    required String sixHundredFifty,
    required String nike,
  }) {
    return SizedBox(
        width: 159.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(sixHundredFifty,
              textAlign: TextAlign.right,
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.primary)),
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(nike,
                  textAlign: TextAlign.right,
                  style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(
                      color: theme.colorScheme.errorContainer.withOpacity(1))))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the shoppingBagPaymentTypeScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagPaymentTypeScreen);
  }

  /// Navigates to the shoppingBagSeriousPaymenyTwoScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagSeriousPaymenyTwoScreen);
  }
}
