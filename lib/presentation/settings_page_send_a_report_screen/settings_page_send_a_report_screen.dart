import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingsPageSendAReportScreen extends StatelessWidget {
  SettingsPageSendAReportScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 58.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Column(children: [
                          Container(
                              width: 354.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.h, vertical: 14.v),
                              decoration: AppDecoration.outlineBlueGray
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Text("عنوان الشكوى",
                                  style: CustomTextStyles.bodySmallOnError)),
                          SizedBox(height: 44.v),
                          _buildTwentyEight(context),
                          SizedBox(height: 45.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 43.h, right: 16.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtDescription(context);
                                                },
                                                child: SizedBox(
                                                    width: 290.h,
                                                    child: Text(
                                                        "ستتلقى الرد على بريدك الإلكتروني , يرجى فتح بريدك في أقرب\nفرصة ممكنة.",
                                                        maxLines: 3,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: CustomTextStyles
                                                            .bodySmallErrorContainer
                                                            .copyWith(
                                                                height:
                                                                    1.33))))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapView(context);
                                            },
                                            child: Container(
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 12.h,
                                                    top: 2.v,
                                                    bottom: 18.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.whiteA700,
                                                    border: Border.all(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        width: 1.h))))
                                      ]))),
                          SizedBox(height: 45.v),
                          _buildTf2(context),
                          SizedBox(height: 265.v),

                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: InkWell(
          child: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeft,
              margin: EdgeInsets.only(left: 20.h, top: 14.v, bottom: 14.v),
              onTap: () {
              print("ssssss");
              }),
        ),
        actions: [
          AppbarSubtitleTwo(
              text: "إرسال شكوى",
              margin: EdgeInsets.fromLTRB(17.h, 21.v, 16.h, 1.v)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgReportFill1WgErrorcontainer,
              margin: EdgeInsets.only(left: 9.h, top: 16.v, right: 33.h))
        ]);
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Container(
        width: 354.h,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        decoration: AppDecoration.outlineBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Text("تفاصيل الشكوى", style: CustomTextStyles.bodySmallOnError));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        width: 162.h,
        text: "رجوع",
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBlack90001,
        onPressed: () {
          onTaptf(context);
        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(width: 176.h, text: "إرسال الشكوى");
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildTf(context), _buildTf1(context)]));
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


  /// Common widget
  Widget _buildThirtyThree(
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
   Navigator.pushNamed(context, AppRoutes.settingsPageContainerScreen);
  }

  /// Navigates to the registerPoliticatsAndTermsToRegisterScreen when the action is triggered.
  onTapTxtDescription(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerPoliticatsAndTermsToRegisterScreen);
  }

  /// Navigates to the settingsPageSendAReportActiveScreen when the action is triggered.
  onTapView(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageSendAReportActiveScreen);
  }

  /// Navigates to the settingsPageContainerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageContainerScreen);
  }
}
