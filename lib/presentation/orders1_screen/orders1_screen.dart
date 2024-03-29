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
class Orders1Screen extends StatelessWidget {
  Orders1Screen({Key? key}) : super(key: key);

  TextEditingController group702Controller = TextEditingController();

  TextEditingController group704Controller = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 24.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("المحفظة",
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer15),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector18x19,
                                    height: 18.v,
                                    width: 19.h,
                                    margin: EdgeInsets.only(left: 17.h))
                              ]))),
                  SizedBox(height: 32.v),
                  _buildWidget(context),
                  SizedBox(height: 21.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 7.h),
                          child: Text("تاريخ المحفظة",
                              style:
                                  CustomTextStyles.labelLargeErrorContainer))),
                  SizedBox(height: 28.v),
                  _buildGroup702(context),
                  SizedBox(height: 5.v)
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
  Widget _buildWidget(BuildContext context) {
    return Container(
        width: 389.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
        decoration: AppDecoration.gradientPrimaryToPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: EdgeInsets.only(top: 9.v, bottom: 1.v),
                    child: Text("رصيدك الكلي",
                        style: CustomTextStyles.titleMediumPrimary)),
                CustomImageView(
                    imagePath: ImageConstant.imgAttachMoneyFi,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(left: 8.h))
              ]),
              SizedBox(height: 36.v),
              Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: Text("2,250 د.ل",
                      style: CustomTextStyles.headlineSmallGray90002)),
              SizedBox(height: 6.v)
            ]));
  }

  /// Section Widget
  Widget _buildGroup702(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 21.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomTextFormField(
              controller: group702Controller,
              hintText:
                  "1- المبلغ 25د.ل                               استلام                             12-5-2023        14:34",
              contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
              borderDecoration: TextFormFieldStyleHelper.underLineGray,
              filled: false),
          SizedBox(height: 19.v),
          CustomTextFormField(
              controller: group704Controller,
              hintText:
                  "2- المبلغ 200د.ل                           استلام                             12-5-2023        18:09",
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(horizontal: 11.h),
              borderDecoration: TextFormFieldStyleHelper.underLineGray,
              filled: false),
          SizedBox(height: 18.v),
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "2- المبلغ 1,000د.ل                     ",
                    style: CustomTextStyles.bodyMedium13),
                TextSpan(
                    text:
                        "   استلام                             10-5-2023        16:09",
                    style: CustomTextStyles.labelLargeErrorContainer13)
              ]),
              textAlign: TextAlign.left)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
}
