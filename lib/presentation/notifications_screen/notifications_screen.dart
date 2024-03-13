import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page/main_page.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 36.v),
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
                                                  child: Text("الإشعارات",
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
                                SizedBox(height: 20.v),
                                _buildDate3(context),


                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgShoppingBagFiErrorcontainer,
            margin: EdgeInsets.only(left: 26.h, top: 21.v, bottom: 17.v)),
        title: Container(
            height: 20.v,
            width: 16.h,
            margin: EdgeInsets.only(left: 37.h),
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 20.v,
                  width: 16.h,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgVectorErrorcontainer20x16,
                  height: 20.v,
                  width: 16.h,
                  alignment: Alignment.center)
            ])),
        actions: [
          AppbarSubtitleFive(
              text: empName.toString(),
              margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v)),
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse2,
              margin: EdgeInsets.only(left: 13.h, top: 19.v, right: 38.h))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildDate3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 23.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 4.v, bottom: 34.v),
                            child: Text("12-11-2023",
                                style: CustomTextStyles.bodyMediumGray60001)),
                        Spacer(flex: 52),
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, bottom: 34.v),
                            child: Text("12:00",
                                style: CustomTextStyles.bodyMediumGray60001)),
                        Spacer(flex: 47),
                        GestureDetector(
                            onTap: () {
                              onTapTxtKfgh(context);
                            },
                            child: SizedBox(
                                width: 167.h,
                                child: Text(
                                    "حصلت على كوبون خصم ب (25%)\nالرمز : kfgh378",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style:
                                        CustomTextStyles.titleSmallGray90002))),
                        Container(
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            margin: EdgeInsets.only(
                                left: 13.h, top: 5.v, bottom: 40.v),
                            decoration: BoxDecoration(
                                color: appTheme.redA700,
                                borderRadius: BorderRadius.circular(4.h)))
                      ])),
              SizedBox(height: 19.v),
              Divider(color: appTheme.gray500),
              SizedBox(height: 29.v),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, right: 26.h),
                  child: _buildDate(context,
                      date: "12-11-2023",
                      time: "12:00",
                      widget: "تم استلام طلبية")),
              SizedBox(height: 17.v),
              Divider(color: appTheme.gray500),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 19.h, right: 26.h),
                  child: _buildDate(context,
                      date: "12-11-2023",
                      time: "11:30",
                      widget: "تم طلب طلبية"))
            ]));
  }

  /// Section Widget


  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildDate(
    BuildContext context, {
    required String date,
    required String time,
    required String widget,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(date,
          style: CustomTextStyles.bodyMediumGray60001
              .copyWith(color: appTheme.gray60001)),
      Spacer(flex: 25),
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(time,
              style: CustomTextStyles.bodyMediumGray60001
                  .copyWith(color: appTheme.gray60001))),
      Spacer(flex: 74),
      Text(widget,
          style: CustomTextStyles.bodyMediumGray90002
              .copyWith(color: appTheme.gray90002))
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

  /// Navigates to the notificationsCopunScreen when the action is triggered.
  onTapTxtKfgh(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsCopunScreen);
  }
}
