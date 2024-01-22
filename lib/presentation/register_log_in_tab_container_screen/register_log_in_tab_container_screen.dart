import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_one_page/register_create_an_account_one_page.dart';
import 'package:noor_s_application1/presentation/register_log_in_one_page/register_log_in_one_page.dart';

class RegisterLogInTabContainerScreen extends StatefulWidget {
  const RegisterLogInTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterLogInTabContainerScreenState createState() =>
      RegisterLogInTabContainerScreenState();
}

class RegisterLogInTabContainerScreenState
    extends State<RegisterLogInTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 59.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 38.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 14.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "زاد - ZAD",
                          style: CustomTextStyles.labelLargeErrorContainer_1,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse138x38,
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        radius: BorderRadius.circular(
                          19.h,
                        ),
                        margin: EdgeInsets.only(left: 14.h),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 42.h),
                  child: Text(
                    "مرحباً بعودتك",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 42.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 273.h,
                  margin: EdgeInsets.only(right: 42.h),
                  child: Text(
                    "يرجى ملء البيانات التالية لتسجيل الدخول لحسابك والتفاعل مع تطبيق زاد",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: CustomTextStyles.bodyMedium14.copyWith(
                      height: 1.36,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Container(
                height: 30.v,
                width: 290.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor:
                      theme.colorScheme.errorContainer.withOpacity(1),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Almarai',
                    fontWeight: FontWeight.w700,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "تسجيل الدخول",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "إنشاء حساب",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 515.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      RegisterLogInOnePage(),
                      RegisterCreateAnAccountOnePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
