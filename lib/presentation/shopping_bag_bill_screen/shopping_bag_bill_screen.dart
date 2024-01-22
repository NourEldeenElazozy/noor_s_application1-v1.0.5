import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShoppingBagBillScreen extends StatelessWidget {
  ShoppingBagBillScreen({Key? key}) : super(key: key);

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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 56.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22.h),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 10.h),
                                        child: Text("فاتورة الشراء",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainer15))),
                                SizedBox(height: 24.v),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 9.h, vertical: 12.v),
                                    decoration: AppDecoration.fillWhiteA
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 6.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text("بيانات العميل :",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          SizedBox(height: 21.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text(
                                                  "اسم العميل : محمد علي",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 13.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text("رقم الطلب : 1209",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 14.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text(
                                                  "رقم االهاتف : 0981664712 ",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 10.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text(
                                                  "عنوان السكن : بنغازي - شارع جمال عبد الناصر",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 9.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text(
                                                  "الايميل : mohemedali@gmail.com",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 21.v),
                                          Divider(color: appTheme.gray60005),
                                          SizedBox(height: 14.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text("فاتورة الشراء :",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          SizedBox(height: 21.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                  "حذاء رياضي نايك                                                                          65د.ل",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 32.v),
                                          Divider(color: appTheme.gray60005),
                                          SizedBox(height: 27.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text(
                                                  "عدد المنتجات التي تم شراؤها :",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          SizedBox(height: 10.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Text("1  حذاء رياضي نايك",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 21.v),
                                          Divider(color: appTheme.gray60005),
                                          SizedBox(height: 38.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text("التكلفة الكلية :",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          SizedBox(height: 14.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text("65د.ل",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 22.v),
                                          Divider(color: appTheme.gray60005),
                                          SizedBox(height: 21.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text("بيانات الطلب :",
                                                  style: CustomTextStyles
                                                      .titleSmallErrorContainer)),
                                          SizedBox(height: 15.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text("وسيلة الدفع : نقدي",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 9.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text(
                                                  "تاريخ الطلب : 1-11-2023",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 8.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 18.h),
                                              child: Text("توقيت الطلب : 13:56",
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          SizedBox(height: 23.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 15.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 7.v,
                                                                bottom: 4.v),
                                                        child: Text(
                                                            "تطبيق زاد - ZAD",
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse11,
                                                        height: 29.adaptSize,
                                                        width: 29.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(14.h),
                                                        margin: EdgeInsets.only(
                                                            left: 12.h))
                                                  ]))
                                        ])),
                                SizedBox(height: 27.v),
                                CustomElevatedButton(
                                    text: "موافق",
                                    margin: EdgeInsets.only(
                                        left: 10.h, right: 14.h),
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumWhiteA700ExtraBold,
                                    onPressed: () {
                                      onTaptf(context);
                                    }),


                              ]))))
                ]))));
  }

  /// Section Widget


  /// Common widget
  Widget _buildSeventeen(
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

  /// Navigates to the profileScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
