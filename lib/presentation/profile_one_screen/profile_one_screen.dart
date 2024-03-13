import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_outlined_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

import '../../utils.dart';

// ignore_for_file: must_be_immutable
class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key}) : super(key: key);

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
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 41.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 18.h, right: 25.h),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse14,
                              height: 111.adaptSize,
                              width: 111.adaptSize,
                              radius: BorderRadius.circular(55.h)),
                          SizedBox(height: 16.v),
                          Text(empName.toString(),
                              style: theme.textTheme.titleMedium),
                          SizedBox(height: 31.v),
                          _buildWidget1(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text("إنشاء الحساب : 18-2-2023",
                                      style: CustomTextStyles
                                          .bodySmallInterErrorContainer))),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 9.h),
                                  child: Text("نشاطاتك",
                                      style: CustomTextStyles
                                          .titleMediumExtraBold))),
                          SizedBox(height: 24.v),
                          _buildTf2(context),
                          SizedBox(height: 274.v),
                          _buildShoppingbagFILLwghtGRADopsz2(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarSubtitleFour(
            text: "تعديل الملف الشخصي",
            margin: EdgeInsets.only(left: 43.h),
            onTap: () {
              onTapWidget(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "الملف الشخصي",
              margin: EdgeInsets.only(left: 20.h, top: 17.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgUserProfile1,
              margin: EdgeInsets.fromLTRB(10.h, 17.v, 33.h, 4.v))
        ]);
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 9.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 19.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 2.v),
                  decoration: AppDecoration.fillDeepOrange
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 40.h,
                            margin: EdgeInsets.only(top: 5.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "الموقع\n",
                                      style:
                                          CustomTextStyles.bodyMediumPrimary14),
                                  TextSpan(
                                      text: "بنغازي",
                                      style: CustomTextStyles
                                          .titleSmallErrorContainerBold)
                                ]),
                                textAlign: TextAlign.right)),
                        CustomImageView(
                            imagePath: ImageConstant.imgLocationOnFil,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(
                                left: 11.h, top: 5.v, bottom: 28.v))
                      ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 19.h),
                  padding: EdgeInsets.symmetric(horizontal: 11.h),
                  decoration: AppDecoration.fillDeepOrange
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 73.h,
                            margin: EdgeInsets.only(top: 8.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "رقم الهاتف\n",
                                      style:
                                          CustomTextStyles.bodyMediumPrimary14),
                                  TextSpan(
                                      text: "0987654432",
                                      style: CustomTextStyles
                                          .titleSmallErrorContainerBold)
                                ]),
                                textAlign: TextAlign.right)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCallOn1,
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.only(
                                left: 14.h, top: 11.v, bottom: 33.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "تم الاستلام 12-11-2023",
            margin: EdgeInsets.only(right: 9.h),
            buttonStyle: CustomButtonStyles.fillWhiteATL8,
            buttonTextStyle: CustomTextStyles.titleSmallGray80002,
            onPressed: () {
              onTaptf(context);
            }));
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "عرض الفاتورة",
            margin: EdgeInsets.only(left: 9.h),
            onPressed: () {
              onTaptf1(context);
            }));
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle85,
                  height: 127.v,
                  width: 342.h,
                  radius: BorderRadius.circular(20.h)),
              SizedBox(height: 24.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("المسافة 15 كم",
                                style: CustomTextStyles.titleMediumGray80004)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 4.v),
                            child: Text("طلبيتك لبيتك",
                                style: CustomTextStyles.titleMediumPrimary_1))
                      ])),
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 13.h),
                      child: Text("أدنى زمن لوصول الطلبية : 30 دقيقة",
                          style: CustomTextStyles.bodyMediumGray90001))),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 11.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.v),
                                child: Text("1-11-2023",
                                    style:
                                        CustomTextStyles.bodyMediumGray90001)),
                            CustomImageView(
                                imagePath: ImageConstant.imgCalendarMonth,
                                height: 21.adaptSize,
                                width: 21.adaptSize,
                                margin: EdgeInsets.only(left: 13.h))
                          ]))),
              SizedBox(height: 18.v),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [_buildTf(context), _buildTf1(context)])
            ]));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController,
        hintText: "إضافة إلى السلة",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz1(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController1,
        hintText: "إضافة إلى السلة",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
                        image: ImageConstant.imgRectangle123),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),
                    _buildShoppingbagFILLwghtGRADopsz(context),
                    SizedBox(height: 7.v)
                  ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
                        image: ImageConstant.imgRectangle124),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),
                    _buildShoppingbagFILLwghtGRADopsz1(context),
                    SizedBox(height: 7.v)
                  ])))
        ]));
  }

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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the settingsPageEditProfileScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageEditProfileScreen);
  }

  /// Navigates to the shoppingBagBillScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagBillScreen);
  }

  /// Navigates to the shoppingBagBillScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagBillScreen);
  }
}
