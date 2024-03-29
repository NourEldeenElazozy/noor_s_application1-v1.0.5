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
class Profile1Screen extends StatelessWidget {
  Profile1Screen({Key? key}) : super(key: key);

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
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 18.h, right: 23.h),
                              child: Column(children: [
                                _buildWidget1(context),
                                SizedBox(height: 47.v),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEllipse14111x111,
                                    height: 111.adaptSize,
                                    width: 111.adaptSize,
                                    radius: BorderRadius.circular(55.h)),
                                SizedBox(height: 19.v),
                                Text("اسماعيل يونس",
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 36.v),
                                _buildWidget2(context),
                                SizedBox(height: 23.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 10.h),
                                        child: Text("إنشاء الحساب : 18-2-2023",
                                            style: CustomTextStyles
                                                .bodySmallInterErrorContainer))),
                                SizedBox(height: 27.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 11.h),
                                        child: Text("إحصائياتك",
                                            style: CustomTextStyles
                                                .titleMediumExtraBold))),
                                SizedBox(height: 21.v),
                                _buildWidget3(context),
                                SizedBox(height: 12.v),
                                _buildWidget4(context),
                                SizedBox(height: 328.v),
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
  Widget _buildWidget1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapTxtWidget(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: Text("تعديل الملف الشخصي",
                          style: CustomTextStyles.labelLargePrimary_2))),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text("الملف الشخصي",
                      style: CustomTextStyles.titleSmallErrorContainer15)),
              CustomImageView(
                  imagePath: ImageConstant.imgUserProfile1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(left: 10.h, bottom: 7.v))
            ]));
  }

  /// Section Widget
  Widget _buildWidget2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 19.h, right: 11.h),
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
  Widget _buildWidget3(BuildContext context) {
    return Container(
        width: 385.h,
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 25.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text("رصيدك الكلي",
                    style: CustomTextStyles.titleMediumPrimary_1),
                CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary22x11,
                    height: 22.v,
                    width: 11.h,
                    margin: EdgeInsets.only(left: 19.h, bottom: 3.v))
              ]),
              SizedBox(height: 22.v),
              Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Text("2,250 د.ل",
                      style: CustomTextStyles.titleLargeGray80004)),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildWidget4(BuildContext context) {
    return Container(
        width: 385.h,
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 21.v),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                    padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                    child: Text("عدد الطلبات المنجزة",
                        style: CustomTextStyles.titleMediumPrimary_1)),
                CustomImageView(
                    imagePath: ImageConstant.imgPackage2Fill0,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 16.h))
              ]),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: Text("285 طلب",
                      style: CustomTextStyles.titleLargeGray80004)),
              SizedBox(height: 7.v)
            ]));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 2.h),
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
                        child: _buildWidget(context, widget: "بني")),
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

  /// Navigates to the notificationsOneScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsOneScreen);
  }

  /// Navigates to the notifications1Screen when the action is triggered.
  onTapVector1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notifications1Screen);
  }

  /// Navigates to the settingsPageEditProfileOneScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageEditProfileOneScreen);
  }
}
