import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class SettingsPageTechnicalSupportMakeACallScreen extends StatelessWidget {
  SettingsPageTechnicalSupportMakeACallScreen({Key? key}) : super(key: key);

  TextEditingController callButController = TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 73.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse10,
                          height: 171.adaptSize,
                          width: 171.adaptSize,
                          radius: BorderRadius.circular(85.h)),
                      SizedBox(height: 24.v),
                      Text("الدعم الفني",
                          style: CustomTextStyles.headlineSmallWhiteA700),
                      SizedBox(height: 15.v),
                      Text("شركة زاد ZAD",
                          style: CustomTextStyles.headlineSmallPrimary),
                      SizedBox(height: 205.v),
                      InkWell(
                        onTap: () {
                          // اتصال بالرقم هنا
                          // يمكنك استخدام رقم الهاتف المطلوب بدلاً من الرقم المذكور
                          launch('tel://0931099990');
                        },
                        child: Container(
                          width: 240.h,
                          height: 50.v,
                          color:appTheme.greenA700 ,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("إجراء مكالمة",style: CustomTextStyles.titleMediumWhiteA700),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgCallfill1wght400grad0opsz241,
                                    height: 35.adaptSize,
                                    width: 35.adaptSize)
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 373.v),


                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftWhiteA700,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitleOne(
              text: "التواصل مع الدعم الفني",
              margin: EdgeInsets.only(left: 17.h, top: 17.v, right: 13.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgReportFill1WgWhiteA700,
              margin: EdgeInsets.fromLTRB(9.h, 14.v, 30.h, 3.v))
        ]);
  }

  /// Section Widget


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
}
