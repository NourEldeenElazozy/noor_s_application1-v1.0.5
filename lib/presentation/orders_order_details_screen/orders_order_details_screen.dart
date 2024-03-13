import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage_one.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class OrdersOrderDetailsScreen extends StatelessWidget {
  const OrdersOrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.v),
                child: Column(children: [
                  _buildWidget(context),
                  SizedBox(height: 16.v),
                  _buildWidget1(context),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("بنغازي",
                                    style:
                                        CustomTextStyles.titleSmallGray80004)),
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgLocationOnFilGray80001,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 6.h, bottom: 2.v)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.only(top: 7.v, bottom: 3.v),
                                child: Text("الموقع",
                                    style: CustomTextStyles
                                        .labelLargeErrorContainer))
                          ])),
                  SizedBox(height: 20.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle85,
                      height: 169.v,
                      width: 342.h,
                      radius: BorderRadius.circular(20.h)),
                  SizedBox(height: 31.v),
                  _buildWidget2(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildTf(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 43.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 15.h, top: 11.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitle(
              text: empName.toString(),
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 11.h, 6.v)),
          AppbarTrailingCircleimageOne(
              imagePath: ImageConstant.imgEllipse234x34,
              margin: EdgeInsets.only(left: 17.h, top: 11.v, right: 41.h))
        ]);
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 8.v),
        decoration: AppDecoration.outlineErrorContainer7
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 18.v),
              child: Column(children: [
                Text("عدد القطع", style: CustomTextStyles.labelLargePrimary),
                SizedBox(height: 17.v),
                Text("1", style: CustomTextStyles.labelLargePrimary)
              ])),
          Spacer(flex: 25),
          SizedBox(
              height: 80.v,
              child: VerticalDivider(
                  width: 1.h, thickness: 1.v, color: appTheme.blueGray10004)),
          Spacer(flex: 25),
          Padding(
              padding: EdgeInsets.only(top: 14.v, bottom: 16.v),
              child: Column(children: [
                Text("المبلغ", style: CustomTextStyles.labelLargePrimary),
                SizedBox(height: 19.v),
                Text("65د.ل", style: CustomTextStyles.labelLargePrimary)
              ])),
          Spacer(flex: 28),
          SizedBox(
              height: 80.v,
              child: VerticalDivider(
                  width: 1.h, thickness: 1.v, color: appTheme.blueGray10004)),
          Spacer(flex: 20),
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 18.v),
              child: Column(children: [
                Text("موعد الطلب", style: CustomTextStyles.labelLargePrimary),
                SizedBox(height: 18.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: Text("11:30",
                            style: CustomTextStyles.labelLargePrimary)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 11.v),
        decoration: AppDecoration.outlineErrorContainer7
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 2.v),
              child: Text("خصم بقيمة : 16.25 د.ل",
                  style: CustomTextStyles.labelLargePrimary)),
          CustomImageView(
              imagePath: ImageConstant.imgAttachMoneyFi,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 3.h)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 2.v),
              child: Text("كوبون : خصم 25%",
                  style: CustomTextStyles.labelLargePrimary)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary,
              height: 17.v,
              width: 16.h,
              margin: EdgeInsets.only(left: 11.h, top: 6.v, right: 5.h))
        ]));
  }

  /// Section Widget
  Widget _buildWidget2(BuildContext context) {
    return Container(
        width: 388.h,
        padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 18.v),
        decoration: AppDecoration.outlineErrorContainer7
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("بيانات الطلب", style: CustomTextStyles.labelLargePrimary),
              SizedBox(height: 28.v),
              Text("رقم الطلب : 1209", style: theme.textTheme.bodyMedium),
              SizedBox(height: 15.v),
              Text("رقم االهاتف : 0981664712 ",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 10.v),
              Text("عنوان السكن : بنغازي - شارع جمال عبد الناصر",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 9.v),
              Text("الايميل : mohemedali@gmail.com",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 18.v),
              Text("وسيلة الدفع : نقدي", style: theme.textTheme.bodyMedium),
              SizedBox(height: 9.v),
              Text("تاريخ الطلب : 1-11-2023",
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 10.v),
              Text("توقيت الطلب : 13:56", style: theme.textTheme.bodyMedium),
              SizedBox(height: 5.v)
            ]));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 37.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomElevatedButton(
                  text: "رجوع",
                  margin: EdgeInsets.only(right: 18.h),
                  buttonStyle: CustomButtonStyles.fillBlueGrayTL81,
                  buttonTextStyle: CustomTextStyles.titleSmallBlack90003,
                  onPressed: () {
                    onTaptf(context);
                  })),
          Expanded(
              child: CustomElevatedButton(
                  text: "توصيل الطلبية",
                  margin: EdgeInsets.only(left: 18.h),
                  onPressed: () {
                    onTaptf1(context);
                  }))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the ordersScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ordersScreen);
  }

  /// Navigates to the ordersOrderDetailsChooseTimeThreeScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.ordersOrderDetailsChooseTimeThreeScreen);
  }
}
