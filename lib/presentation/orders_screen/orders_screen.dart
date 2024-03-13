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

// ignore_for_file: must_be_immutable
class OrdersScreen extends StatelessWidget {
  OrdersScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 24.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 7.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 1.v),
                                    child: Text("طلبات الزبائن",
                                        style: CustomTextStyles
                                            .titleSmallErrorContainer15)),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgVectorErrorcontainer19x18,
                                    height: 19.v,
                                    width: 18.h,
                                    margin: EdgeInsets.only(left: 17.h))
                              ]))),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildOrderCard(context)),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: _buildOrderCard(context)),
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
            margin: EdgeInsets.only(left: 35.h, top: 22.v, bottom: 21.v)),
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgVectorErrorcontainer20x19,
            margin: EdgeInsets.only(left: 53.h)),
        actions: [
          AppbarSubtitleThree(
              text: "لوحة التحكم",
              margin: EdgeInsets.fromLTRB(26.h, 25.v, 26.h, 21.v))
        ],
        styleType: Style.bgShadow_1);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildOrderCard(
    BuildContext context, {
    Function? onTapOrderCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapOrderCard!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 19.v),
            decoration: AppDecoration.outlineErrorContainer6
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15.h, right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 9.v),
                                child: Text("11:30  12-11-2023",
                                    style:
                                        CustomTextStyles.bodyMediumGray80003)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 2.v),
                                child: Text(empName.toString(),
                                    style: CustomTextStyles
                                        .titleSmallErrorContainerBold_1)),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse2,
                                height: 28.adaptSize,
                                width: 28.adaptSize,
                                radius: BorderRadius.circular(14.h),
                                margin: EdgeInsets.only(left: 17.h))
                          ])),
                  SizedBox(height: 9.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 48.h),
                          child: Text("بنغازي",
                              style: CustomTextStyles.titleSmallGray80004))),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text("عدد الطلبات : 1",
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1)),
                            CustomImageView(
                                imagePath: ImageConstant.imgPackage2Fill0,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 6.h)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 5.v),
                                child: Text("التكلفة : 65د.ل",
                                    style:
                                        CustomTextStyles.titleMediumPrimary_1)),
                            CustomImageView(
                                imagePath: ImageConstant.imgAttachMoneyFi,
                                height: 24.adaptSize,
                                width: 24.adaptSize)
                          ]))
                ])));
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

  /// Navigates to the ordersOrderDetailsScreen when the action is triggered.
  onTapOrderCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ordersOrderDetailsScreen);
  }
}
