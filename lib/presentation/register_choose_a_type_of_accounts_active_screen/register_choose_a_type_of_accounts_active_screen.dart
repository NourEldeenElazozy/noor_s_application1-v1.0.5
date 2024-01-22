import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class RegisterChooseATypeOfAccountsActiveScreen extends StatelessWidget {
  const RegisterChooseATypeOfAccountsActiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 41.h,
            vertical: 75.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse1,
                height: 81.adaptSize,
                width: 81.adaptSize,
                radius: BorderRadius.circular(
                  40.h,
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "زاد - ZAD",
                style: CustomTextStyles.titleLargeErrorContainerBold,
              ),
              SizedBox(height: 74.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 15.h,
                ),
                child: Text(
                  "اختر نوع الحساب الذي تريد التفاعل\nبه داخل التطبيق",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleLargeErrorContainer.copyWith(
                    height: 1.59,
                  ),
                ),
              ),
              Spacer(
                flex: 41,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildUserTypeBut(context),
              ),
              SizedBox(height: 36.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildUserTypeBut(context),
              ),
              Spacer(
                flex: 58,
              ),
              CustomElevatedButton(
                text: "استمرار",
                buttonTextStyle: CustomTextStyles.titleLargeBold,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildUserTypeBut(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 49.h,
              top: 4.v,
              bottom: 1.v,
            ),
            child: Text(
              "حساب مندوب",
              style: CustomTextStyles.titleMediumWhiteA700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserAvatar12,
            height: 25.adaptSize,
            width: 25.adaptSize,
          ),
        ],
      ),
    );
  }
}
