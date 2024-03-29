import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page/main_page.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Notifications1Screen extends StatelessWidget {
  Notifications1Screen({Key? key}) : super(key: key);

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 35.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 4.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 4.v),
                                                  child: Text("الكوبون",
                                                      style: CustomTextStyles
                                                          .titleSmallErrorContainer15)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgVectorErrorcontainer20x16,
                                                  height: 20.v,
                                                  width: 16.h,
                                                  margin: EdgeInsets.only(
                                                      left: 14.h))
                                            ]))),
                                SizedBox(height: 28.v),
                                _buildWidget(context,
                                    widget: "عرض الطلبية",
                                    oneMillionOneHundredTwelveThou: "1-11-2023",
                                    widget1: empName.toString(),
                                    widget2: "عرض الطلبية",
                                    oneMillionOneHundredTwelveThou1:
                                        "1-11-2023",
                                    widget3: empName.toString(), onTapWidget: () {
                                  onTapTxtWidget(context);
                                }),
                                SizedBox(height: 13.v),
                                _buildWidget(context,
                                    widget: "عرض الطلبية",
                                    oneMillionOneHundredTwelveThou: "1-11-2023",
                                    widget1: empName.toString(),
                                    widget2: "عرض الطلبية",
                                    oneMillionOneHundredTwelveThou1:
                                        "1-11-2023",
                                    widget3: empName.toString()),
                                SizedBox(height: 845.v),
                                _buildShoppingbagFILLwghtGRADopsz(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 63.v,
        leadingWidth: 51.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 21.v),
            onTap: () {
              onTapVector(context);
            }),
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgVector20x19,
            margin: EdgeInsets.only(left: 53.h)),
        actions: [
          AppbarSubtitleThree(
              text: "لوحة التحكم",
              margin: EdgeInsets.fromLTRB(26.h, 25.v, 26.h, 21.v))
        ],
        styleType: Style.bgShadow_1);
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 8.h),
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
                        child: _buildWidget1(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),
                    CustomTextFormField(
                        width: 153.h,
                        controller: shoppingbagFILLwghtGRADopszController,
                        hintText: "إضافة إلى السلة",
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
                            child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgShoppingbagfill0wght400grad0opsz242,
                                height: 21.adaptSize,
                                width: 21.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 26.v)),
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
                        child: _buildWidget1(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),
                    CustomTextFormField(
                        width: 153.h,
                        controller: shoppingbagFILLwghtGRADopszController1,
                        hintText: "إضافة إلى السلة",
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
                            child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgShoppingbagfill0wght400grad0opsz242,
                                height: 21.adaptSize,
                                width: 21.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 26.v)),
                    SizedBox(height: 7.v)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
    required String oneMillionOneHundredTwelveThou,
    required String widget1,
    required String widget2,
    required String oneMillionOneHundredTwelveThou1,
    required String widget3,
    Function? onTapWidget,
  }) {
    return SizedBox(
        height: 59.v,
        width: 395.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(onTap: () {
                          onTapWidget!.call();
                        }),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 3.v),
                            child: Text(widget,
                                style: CustomTextStyles.labelLargePrimary_2
                                    .copyWith(
                                        color: theme.colorScheme.primary))),
                        Spacer(flex: 47),
                        Padding(
                            padding: EdgeInsets.only(top: 8.v, bottom: 3.v),
                            child: Text(oneMillionOneHundredTwelveThou,
                                style: CustomTextStyles.bodyMediumBluegray400
                                    .copyWith(color: appTheme.blueGray400))),
                        Spacer(flex: 52),
                        Padding(
                            padding: EdgeInsets.only(top: 8.v, bottom: 3.v),
                            child: Text(widget1,
                                style: CustomTextStyles.bodyMedium14.copyWith(
                                    color: theme.colorScheme.errorContainer
                                        .withOpacity(1)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            radius: BorderRadius.circular(14.h),
                            margin: EdgeInsets.only(left: 18.h))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 14.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 11.v, bottom: 3.v),
                            child: Text(widget2,
                                style: CustomTextStyles.labelLargePrimary_2
                                    .copyWith(
                                        color: theme.colorScheme.primary))),
                        Spacer(flex: 47),
                        Padding(
                            padding: EdgeInsets.only(top: 9.v, bottom: 3.v),
                            child: Text(oneMillionOneHundredTwelveThou1,
                                style: CustomTextStyles.bodyMediumBluegray400
                                    .copyWith(color: appTheme.blueGray400))),
                        Spacer(flex: 52),
                        Padding(
                            padding: EdgeInsets.only(top: 9.v, bottom: 3.v),
                            child: Text(widget3,
                                style: CustomTextStyles.bodyMedium14.copyWith(
                                    color: theme.colorScheme.errorContainer
                                        .withOpacity(1)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse2,
                            height: 28.adaptSize,
                            width: 28.adaptSize,
                            radius: BorderRadius.circular(14.h),
                            margin: EdgeInsets.only(left: 18.h))
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
  Widget _buildWidget1(
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Vector20x20:
        return AppRoutes.settingsPage;
      case BottomBarEnum.Vectorerrorcontainer18x20:
        return AppRoutes.sectionsOnePage;
      case BottomBarEnum.Vectorerrorcontainer19x19:
        return AppRoutes.sectionsPage;
      case BottomBarEnum.mainPageOneScreen:
        return AppRoutes.mainPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.settingsPage:
        return SettingsPage();
      case AppRoutes.sectionsOnePage:
        return SectionsOnePage();
      case AppRoutes.sectionsPage:
        return SectionsPage();
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the notificationsOneScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsOneScreen);
  }

  /// Navigates to the ordersOrderDetailsScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ordersOrderDetailsScreen);
  }
}
