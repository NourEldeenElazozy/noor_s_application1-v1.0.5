import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/ordershistory.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page_change_password_screen/settings_page_change_password_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_edit_profile_screen/settings_page_edit_profile_screen.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:noor_s_application1/utils.dart';
// ignore_for_file: must_be_immutable
class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: CustomBottomBar(
              onChanged: (type) {
                if (type==BottomBarEnum.mainPageOneScreen){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>MainPageOneScreen()));
                }else if(type==BottomBarEnum.Vectorerrorcontainer19x19){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SectionsPage()));
                }else if(type==BottomBarEnum.Vectorerrorcontainer18x20){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SectionsOnePage()));
                }else if(type==BottomBarEnum.Vector20x20){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingsPage()));
                }
                print(type);
              },
            ),
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 23.h, right: 17.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 5.v, bottom: 1.v),
                                        child: Text("الإعدادات",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer15)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSettingsFill1,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(left: 9.h))
                                  ])),
                          SizedBox(height: 29.v),
                          _buildWidget3(context),
                        /*
                          SizedBox(height: 34.v),
                          _buildLockFILLWght2(context),
                         */
                          SizedBox(height: 34.v),
                          _buildLockFILLWght4(context),
                          SizedBox(height: 49.v),
                          SizedBox(
                              height: 152.v,
                              width: 385.h,
                              child: Stack(alignment: Alignment.center, children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 12.h, right: 7.h, bottom: 54.v),
                                    child: _buildLockFILLWght(context)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding:
                                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 16.v),
                                        decoration: AppDecoration.outlineBluegray100
                                            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(right: 23.h),
                                                  child: Text("طلباتي",
                                                      style:
                                                      CustomTextStyles.titleSmallErrorContainer)),
                                              SizedBox(height: 31.v),
                                              Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {

                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(builder: (context) => OrdersHistory()),
                                                          );
                                                        },
                                                        child: Padding(
                                                            padding: EdgeInsets.only(
                                                                top: 3.v, bottom: 1.v),
                                                            child: Text("سجل الطلبات ",
                                                                style: CustomTextStyles
                                                                    .titleSmallGray80004))),
                                                    CustomImageView(
                                                        imagePath: ImageConstant.imgPackage2Fill0,
                                                        height: 21.adaptSize,
                                                        width: 21.adaptSize,
                                                        margin: EdgeInsets.only(left: 11.h))
                                                  ]),
                                              SizedBox(height: 12.v),
                                              Divider(indent: 5.h, endIndent: 3.h),
                                              SizedBox(height: 12.v),

                                            ])))
                              ])),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 42.h),
                                  child: Text("تسجيل الخروج",
                                      style: CustomTextStyles
                                          .titleSmallRedA70015))),
                          SizedBox(height: 20.v),

                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgShoppingBagFiErrorcontainer,
            margin: EdgeInsets.only(left: 26.h, top: 21.v, bottom: 17.v),
            onTap: () {
              onTapShoppingBagFI(context);
            }),
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 37.h),
            onTap: () {
              onTapVector(context);
            }),
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
  Widget _buildWidget3(BuildContext context) {
    return SizedBox(
        height: 199.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [

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
                                                            InkWell(

                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 1
                                                                              .v),
                                                                  child: Text(
                                                                      "تغيير الرمز السري",
                                                                      style: CustomTextStyles
                                                                          .titleSmallGray80004)),
                                                            onTap: () {
                                                             Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingsPageChangePasswordScreen()));
                                                            },
                                                            ),
                                                            Container(
                                                                height: 20
                                                                    .adaptSize,
                                                                width: 20
                                                                    .adaptSize,

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

                                                                    ]))
                                                          ])),
                                                  SizedBox(height: 7.v),
                                                  Divider(endIndent: 3.h)
                                                ]))
                                      ]))),

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
                                                      child: InkWell(
                                                         onTap: () {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingsPageEditProfileScreen()));
                                                         },
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

                                                                      ]))
                                                            ]),
                                                      )),
                                                  SizedBox(height: 11.v),
                                                  Divider()
                                                ]))
                                      ]))),

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
  Widget _buildLockFILLWght2(BuildContext context) {
    return SizedBox(
        height: 111.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h, right: 7.h, bottom: 13.v),
              child: _buildLockFILLWght(context)),
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
  Widget _buildLockFILLWght4(BuildContext context) {
    return SizedBox(
        height: 152.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h, right: 7.h, bottom: 54.v),
              child: _buildLockFILLWght(context)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 6.h, vertical: 16.v),
                  decoration: AppDecoration.outlineBluegray100
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 23.h),
                            child: Text("الدعم",
                                style:
                                    CustomTextStyles.titleSmallErrorContainer)),
                        SizedBox(height: 31.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtWidget2(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 1.v),
                                      child: Text("ارسال شكوى",
                                          style: CustomTextStyles
                                              .titleSmallGray80004))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgReportFill1Wg,
                                  height: 21.adaptSize,
                                  width: 21.adaptSize,
                                  margin: EdgeInsets.only(left: 11.h))
                            ]),
                        SizedBox(height: 12.v),
                        Divider(indent: 5.h, endIndent: 3.h),
                        SizedBox(height: 12.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtWidget3(context);
                                  },
                                  child: Text("التواصل مع الدعم الفني",
                                      style: CustomTextStyles
                                          .titleSmallGray80004)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgContactSupport,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 12.h, bottom: 2.v))
                            ])
                      ])))
        ]));
  }

  /// Section Widget


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
  Widget _buildLockFILLWght(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      CustomImageView(
          imagePath: ImageConstant.imgLockFill1Wght,
          height: 20.adaptSize,
          width: 20.adaptSize,
          alignment: Alignment.centerRight),
      SizedBox(height: 12.v),
      Divider(endIndent: 3.h)
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

  /// Navigates to the shoppingBagScreen when the action is triggered.
  onTapShoppingBagFI(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagScreen);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  /// Navigates to the settingsPageChangePasswordScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageChangePasswordScreen);
  }

  /// Navigates to the settingsPageEditProfileScreen when the action is triggered.
  onTapTxtWidget1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageEditProfileScreen);
  }

  /// Navigates to the settingsPageSendAReportScreen when the action is triggered.
  onTapTxtWidget2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageSendAReportScreen);
  }

  /// Navigates to the settingsPageTechnicalSupportMakeACallScreen when the action is triggered.
  onTapTxtWidget3(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.settingsPageTechnicalSupportMakeACallScreen);
  }
}
