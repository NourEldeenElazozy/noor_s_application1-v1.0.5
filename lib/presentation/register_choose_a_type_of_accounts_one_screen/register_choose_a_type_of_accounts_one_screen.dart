import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_one_page/register_create_an_account_one_page.dart';
import 'package:noor_s_application1/presentation/register_log_in_one_page/register_log_in_one_page.dart';
import 'package:noor_s_application1/presentation/register_log_in_tab_container_screen/register_log_in_tab_container_screen.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class RegisterChooseATypeOfAccountsOneScreen extends StatefulWidget {

  const RegisterChooseATypeOfAccountsOneScreen({Key? key}) : super(key: key);
  @override
  State<RegisterChooseATypeOfAccountsOneScreen> createState() => _RegisterChooseATypeOfAccountsOneScreenState();
}
class _RegisterChooseATypeOfAccountsOneScreenState extends State<RegisterChooseATypeOfAccountsOneScreen> {

  bool isButtonPressed1 = true;
  bool isButtonPressed2 = false;
  @override
  Widget build(BuildContext context) {
    type="client";
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 41.h, vertical: 75.v),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse1,
                          height: 81.adaptSize,
                          width: 81.adaptSize,
                          radius: BorderRadius.circular(40.h)),
                      SizedBox(height: 20.v),
                      Text("زاد - ZAD",
                          style: CustomTextStyles.titleLargeErrorContainerBold),
                      SizedBox(height: 74.v),
                      Container(
                          width: 315.h,
                          margin: EdgeInsets.only(left: 16.h, right: 15.h),
                          child: Text(
                              "اختر نوع الحساب الذي تريد التفاعل\nبه داخل التطبيق",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleLargeErrorContainer
                                  .copyWith(height: 1.59))),
                      Spacer(flex: 41),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildUserTypeBut('حساب عميل', context,)),
                      SizedBox(height: 36.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: _buildUserTypeBut2('حساب مندوب', context)),
                      Spacer(flex: 58),
                      GestureDetector(
                        child: Container(
                          color:     Colors.red,
                          child: CustomElevatedButton(

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterLogInTabContainerScreen(),
                                ),
                              );
                            },
                              text: "استمرار",
                           ),
                        ),
                      )
                    ]))));
  }

  /// Common widget
  ///
  Widget _buildUserTypeBut(String tittle,
      BuildContext context, {
        Function? onTapUserTypeBut,
      }) {
    return GestureDetector(
        onTap: () {
          setState(() {
            type="client";
            isButtonPressed1 = !isButtonPressed1;
            isButtonPressed2=false;
          });
        },
        child: Container(

            padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 14.v),
            decoration: AppDecoration.outlineErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8, color: isButtonPressed1 ? Colors.orange : null,),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                      EdgeInsets.only(left: 49.h, top: 4.v, bottom: 1.v),
                      child: Text(tittle,
                          style: CustomTextStyles.titleMedium18)),
                  CustomImageView(
                      imagePath: ImageConstant.imgUserAvatar125x25,
                      height: 25.adaptSize,
                      width: 25.adaptSize)
                ])));
  }
  Widget _buildUserTypeBut2(String tittle,
      BuildContext context, {
        Function? onTapUserTypeBut,
      }) {
    return GestureDetector(
        onTap: () {
          setState(() {
            type="men";
            isButtonPressed2 = !isButtonPressed2;
            isButtonPressed1=false;
          });
        },
        child: Container(

            padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 14.v),
            decoration: AppDecoration.outlineErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8, color: isButtonPressed2 ? Colors.orange : null,),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                      EdgeInsets.only(left: 49.h, top: 4.v, bottom: 1.v),
                      child: Text(tittle,
                          style: CustomTextStyles.titleMedium18)),
                  CustomImageView(
                      imagePath: ImageConstant.imgUserAvatar125x25,
                      height: 25.adaptSize,
                      width: 25.adaptSize)
                ])));
  }
  /// Navigates to the registerChooseATypeOfAccountsActiveScreen when the action is triggered.
  onTapUserTypeBut(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerChooseATypeOfAccountsActiveScreen);
  }

  /// Navigates to the registerChooseATypeOfAccountsActiveScreen when the action is triggered.
  onTapUserTypeBut1(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerChooseATypeOfAccountsActiveScreen);
  }

}

