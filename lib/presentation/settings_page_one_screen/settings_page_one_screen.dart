import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page/main_page.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingsPageOneScreen extends StatelessWidget {
  SettingsPageOneScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 23.h, right: 17.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5.v, bottom: 1.v),
                                              child: Text("الإعدادات",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer15)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsFill1,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 9.h))
                                        ])),
                                SizedBox(height: 29.v),
                                _buildWidget3(context),
                                SizedBox(height: 34.v),
                                _buildLockFILLWght(context),
                                SizedBox(height: 55.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 42.h),
                                        child: Text("تسجيل الخروج",
                                            style: CustomTextStyles
                                                .titleSmallRedA70015))),
                                SizedBox(height: 572.v),
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
            imagePath: ImageConstant.imgVectorErrorcontainer20x19,
            margin: EdgeInsets.only(left: 53.h),
            onTap: () {
              onTapVector1(context);
            }),
        actions: [
          AppbarSubtitleThree(
              text: "لوحة التحكم",
              margin: EdgeInsets.fromLTRB(26.h, 25.v, 26.h, 21.v))
        ],
        styleType: Style.bgShadow_1);
  }

  /// Section Widget
  Widget _buildWidget3(BuildContext context) {
    return SizedBox(
        height: 199.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 12.v, right: 7.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 23.h),
                            child: Text("الملف الشخصي",
                                style:
                                    CustomTextStyles.titleSmallErrorContainer)),
                        SizedBox(height: 27.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtWidget(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("تغيير الرمز السري",
                                          style: CustomTextStyles
                                              .titleSmallGray80004))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLockFill1Wght,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 12.h, bottom: 4.v))
                            ]),
                        SizedBox(height: 7.v),
                        Divider(endIndent: 3.h),
                        SizedBox(height: 12.v),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtWidget1(context);
                                      },
                                      child: Text("تعديل الملف الشخصي",
                                          style: CustomTextStyles
                                              .titleSmallGray80004)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgAccountCircle,
                                      height: 17.adaptSize,
                                      width: 17.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 13.h, top: 2.v, bottom: 4.v))
                                ])),
                        SizedBox(height: 11.v),
                        Divider(endIndent: 3.h),
                        SizedBox(height: 15.v),
                        _buildWidget(context, widget: "حذف الحساب")
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 12.v),
                  decoration: AppDecoration.outlineBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 23.h),
                            child: Text("الملف الشخصي",
                                style: CustomTextStyles
                                    .titleSmallErrorContainer))),
                    SizedBox(height: 27.v),
                    SizedBox(
                        height: 32.v,
                        width: 366.h,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 32.v,
                                  width: 366.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.v, right: 32.h),
                                                child: Text("تغيير الرمز السري",
                                                    style: CustomTextStyles
                                                        .titleSmallGray80004))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                width: 363.h,
                                                child: Divider())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 1
                                                                            .v),
                                                                child: Text(
                                                                    "تغيير الرمز السري",
                                                                    style: CustomTextStyles
                                                                        .titleSmallGray80004)),
                                                            Container(
                                                                height: 20
                                                                    .adaptSize,
                                                                width: 20
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 12
                                                                            .h,
                                                                        bottom: 4
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgLockFill1Wght,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgLockFill1Wght,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))
                                                          ])),
                                                  SizedBox(height: 7.v),
                                                  Divider(endIndent: 3.h)
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 1.v, right: 32.h),
                                  child: Text("تغيير الرمز السري",
                                      style: CustomTextStyles
                                          .titleSmallGray80004))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(width: 363.h, child: Divider()))
                        ])),
                    SizedBox(height: 12.v),
                    SizedBox(
                        height: 35.v,
                        width: 364.h,
                        child: Stack(alignment: Alignment.topRight, children: [
                          Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                  height: 35.v,
                                  width: 364.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 30.h),
                                                child: Text(
                                                    "تعديل الملف الشخصي",
                                                    style: CustomTextStyles
                                                        .titleSmallGray80004))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                width: 363.h,
                                                child: Divider())),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "تعديل الملف الشخصي",
                                                                style: CustomTextStyles
                                                                    .titleSmallGray80004),
                                                            Container(
                                                                height: 17
                                                                    .adaptSize,
                                                                width: 17
                                                                    .adaptSize,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 13
                                                                            .h,
                                                                        top:
                                                                            2.v,
                                                                        bottom: 4
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgAccountCircle,
                                                                          height: 17
                                                                              .adaptSize,
                                                                          width: 17
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgAccountCircle,
                                                                          height: 17
                                                                              .adaptSize,
                                                                          width: 17
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.center)
                                                                    ]))
                                                          ])),
                                                  SizedBox(height: 11.v),
                                                  Divider()
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 30.h),
                                  child: Text("تعديل الملف الشخصي",
                                      style: CustomTextStyles
                                          .titleSmallGray80004))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(width: 363.h, child: Divider()))
                        ])),
                    SizedBox(height: 15.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("حذف الحساب",
                                      style:
                                          CustomTextStyles.titleSmallRedA700)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgDeleteForever,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                  margin: EdgeInsets.only(left: 13.h))
                            ])),
                    SizedBox(height: 5.v)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildLockFILLWght(BuildContext context) {
    return SizedBox(
        height: 111.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 12.h, right: 7.h, bottom: 13.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLockFill1Wght,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 12.v),
                    Divider(endIndent: 3.h)
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 8.v),
                  decoration: AppDecoration.outlineBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 23.h),
                                child: Text("الشاشة",
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer))),
                        SizedBox(height: 33.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgToggleOnFill1,
                                      height: 38.adaptSize,
                                      width: 38.adaptSize),
                                  Spacer(),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.v, bottom: 12.v),
                                      child: Text("الوضع الليلي",
                                          style: CustomTextStyles
                                              .titleSmallGray80004)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgDarkModeFill1,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 11.h, bottom: 15.v))
                                ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 8.h),
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
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(widget,
              style: CustomTextStyles.titleSmallRedA700
                  .copyWith(color: appTheme.redA700))),
      CustomImageView(
          imagePath: ImageConstant.imgDeleteForever,
          height: 19.adaptSize,
          width: 19.adaptSize,
          margin: EdgeInsets.only(left: 13.h))
    ]);
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

  /// Navigates to the notifications1Screen when the action is triggered.
  onTapVector1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notifications1Screen);
  }

  /// Navigates to the settingsPageChangePasswordOneScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageChangePasswordOneScreen);
  }

  /// Navigates to the settingsPageEditProfileOneScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageEditProfileOneScreen);
  }
}
