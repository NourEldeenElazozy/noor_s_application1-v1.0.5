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
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NotificationsCopunScreen extends StatelessWidget {
  NotificationsCopunScreen({Key? key}) : super(key: key);

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
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 927.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.center, children: [
                        _buildWidget1(context),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.h, vertical: 264.v),
                                decoration: AppDecoration.fillGray80066,
                                child: _buildTf2(context)))
                      ])),
                  SizedBox(height: 197.v),
                  _buildShoppingbagFILLwghtGRADopsz2(context),
                  Container(
                      height: 68.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray50))
                ]))),
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
  Widget _buildWidget1(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, top: 98.v, right: 16.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text("الإشعارات",
                                    style: CustomTextStyles
                                        .titleSmallErrorContainer15)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorErrorcontainer20x16,
                                height: 20.v,
                                width: 16.h,
                                margin: EdgeInsets.only(left: 14.h))
                          ]))),
              SizedBox(height: 20.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.h, vertical: 24.v),
                  decoration: AppDecoration.outlineBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h, right: 5.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 4.v, bottom: 16.v),
                                      child: Text("12-11-2023",
                                          style: CustomTextStyles
                                              .bodyMediumGray60001)),
                                  Spacer(flex: 52),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 17.v),
                                      child: Text("12:00",
                                          style: CustomTextStyles
                                              .bodyMediumGray60001)),
                                  Spacer(flex: 47),
                                  SizedBox(
                                      width: 167.h,
                                      child: Text("حصلت على كوبون خصم ب (25%)",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: CustomTextStyles
                                              .titleSmallGray90002)),
                                  Container(
                                      height: 9.adaptSize,
                                      width: 9.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 13.h, top: 5.v, bottom: 21.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.redA700,
                                          borderRadius:
                                              BorderRadius.circular(4.h)))
                                ])),
                        SizedBox(height: 10.v),
                        Divider(color: appTheme.gray500),
                        SizedBox(height: 25.v),
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
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        width: 165.h,
        text: "إلغاء",
        buttonStyle: CustomButtonStyles.fillBlueGrayTL81,
        buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
        onPressed: () {
          onTaptf(context);
        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(width: 162.h, text: "إرسال");
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 7.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 22.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 14.h),
                      child: Text("كوبون الخصم",
                          style: CustomTextStyles.titleMedium17))),
              SizedBox(height: 46.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 7.h),
                      child: Text("يرجى إدخال رمز الكوبون للحصول على الخصم",
                          style: theme.textTheme.bodyMedium))),
              SizedBox(height: 26.v),
              Container(
                  height: 44.v,
                  width: 354.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(8.h),
                      border: Border.all(
                          color: appTheme.blueGray10004, width: 1.h))),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h, right: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [_buildTf(context), _buildTf1(context)]))
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
        padding: EdgeInsets.symmetric(horizontal: 26.h),
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

  /// Navigates to the notificationsScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
