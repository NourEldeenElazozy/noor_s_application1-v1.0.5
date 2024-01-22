import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class RegisterLogInPage extends StatefulWidget {
  const RegisterLogInPage({Key? key}) : super(key: key);

  @override
  RegisterLogInPageState createState() => RegisterLogInPageState();
}

class RegisterLogInPageState extends State<RegisterLogInPage>
    with AutomaticKeepAliveClientMixin<RegisterLogInPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(
                    children: [SizedBox(height: 49.v), _buildTf(context)]))));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 32.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: Text("ادخل الإيميل",
                            style: CustomTextStyles
                                .titleSmallErrorContainerBold_1))),
                SizedBox(height: 11.v),
                Container(
                    width: 354.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Text("الإيميل الإلكتروني",
                        style: CustomTextStyles.bodySmallOnError))
              ])),
          SizedBox(height: 32.v),
          Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Column(children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: Text("ادخل الرمز السري",
                            style: CustomTextStyles
                                .titleSmallErrorContainerBold_1))),
                SizedBox(height: 8.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 9.v),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgVisibilityFill,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v)),
                          Padding(
                              padding: EdgeInsets.only(top: 8.v, bottom: 1.v),
                              child: Text("الرمز السري",
                                  style: CustomTextStyles.bodySmallOnError))
                        ]))
              ])),
          SizedBox(height: 16.v),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtWidget(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 32.h),
                      child: Text("نسيت الرمز السري؟",
                          style: CustomTextStyles.bodySmallPrimary.copyWith(
                              decoration: TextDecoration.underline))))),
          SizedBox(height: 115.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 80.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxttf(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 3.v, bottom: 6.v),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              "إذا كنت لا تمتلك حساب فيجب عليك ",
                                          style: CustomTextStyles
                                              .bodySmallErrorContainer12),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "إنشاء حساب",
                                          style: CustomTextStyles
                                              .labelLargePrimary_1
                                              .copyWith(
                                                  decoration:
                                                      TextDecoration.underline))
                                    ]),
                                    textAlign: TextAlign.left))),
                        CustomImageView(
                            imagePath: ImageConstant.imgFlagFill1Wght,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 8.h))
                      ]))),
          SizedBox(height: 37.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomElevatedButton(
                width: 162.h,
                text: "إلغاء",
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleSmallErrorContainer,
                onPressed: () {
                  onTaptf(context);
                }),
            CustomElevatedButton(width: 166.h, text: "تسجيل سس")
          ])
        ]));
  }

  /// Navigates to the registerLogInForgetAPasswordScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerLogInForgetAPasswordScreen);
  }

  /// Navigates to the registerPoliticatsAndTermsToRegisterScreen when the action is triggered.
  onTapTxttf(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerPoliticatsAndTermsToRegisterScreen);
  }

  /// Navigates to the registerChooseATypeOfAccountsActiveOneScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerChooseATypeOfAccountsActiveOneScreen);
  }
}
