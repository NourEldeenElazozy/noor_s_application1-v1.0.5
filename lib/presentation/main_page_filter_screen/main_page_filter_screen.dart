import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_checkbox_button.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class MainPageFilterScreen extends StatelessWidget {
  MainPageFilterScreen({Key? key})
      : super(
          key: key,
        );

  bool tf = false;

  bool tf2 = false;

  bool tf4 = false;

  bool tf6 = false;

  bool tf8 = false;

  bool tf10 = false;

  bool tf12 = false;

  bool tf14 = false;

  bool tf16 = false;

  bool tf18 = false;

  bool tf20 = false;

  bool tf22 = false;

  bool tf24 = false;

  bool tf26 = false;

  bool tf28 = false;

  bool tf30 = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 801.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    right: 56.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Text(
                          "الفئة",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildTf1(context),
                      SizedBox(height: 8.v),
                      _buildTf3(context),
                      SizedBox(height: 10.v),
                      _buildTf5(context),
                      SizedBox(height: 33.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "الماركة",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 21.v),
                      _buildTf7(context),
                      SizedBox(height: 5.v),
                      _buildTf9(context),
                      SizedBox(height: 11.v),
                      _buildTf11(context),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(right: 13.h),
                        child: Text(
                          "الحجم",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "S",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          Container(
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              bottom: 2.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              border: Border.all(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                width: 1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "M",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          Container(
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                              left: 11.h,
                              top: 2.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              border: Border.all(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                width: 1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "L",
                            style: CustomTextStyles.bodyMedium14,
                          ),
                          Container(
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                              left: 12.h,
                              bottom: 1.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              border: Border.all(
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1),
                                width: 1.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 34.v),
                      Padding(
                        padding: EdgeInsets.only(right: 15.h),
                        child: Text(
                          "اللون",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildTf13(context),
                      SizedBox(height: 2.v),
                      _buildTf15(context),
                      SizedBox(height: 4.v),
                      _buildTf17(context),
                      SizedBox(height: 7.v),
                      _buildTf19(context),
                      SizedBox(height: 3.v),
                      _buildTf21(context),
                      SizedBox(height: 4.v),
                      _buildTf23(context),
                      SizedBox(height: 8.v),
                      _buildTf25(context),
                      SizedBox(height: 8.v),
                      _buildTf27(context),
                      SizedBox(height: 10.v),
                      _buildTf29(context),
                      SizedBox(height: 7.v),
                      _buildTf31(context),
                    ],
                  ),
                ),
              ),
              _buildTf32(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 125.v,
      actions: [
        AppbarTitle(
          text: "فلتر - الأحذية",
          margin: EdgeInsets.only(
            left: 23.h,
            top: 66.v,
            right: 41.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorErrorcontainer14x14,
          margin: EdgeInsets.fromLTRB(32.h, 67.v, 64.h, 3.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomCheckboxButton(
      width: 64.h,
      text: "أطفال",
      value: tf,
      isRightCheck: true,
      onChange: (value) {
        tf = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf3(BuildContext context) {
    return CustomCheckboxButton(
      width: 52.h,
      text: "رجال",
      value: tf2,
      isRightCheck: true,
      onChange: (value) {
        tf2 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf5(BuildContext context) {
    return CustomCheckboxButton(
      width: 54.h,
      text: "نساء",
      value: tf4,
      isRightCheck: true,
      onChange: (value) {
        tf4 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf7(BuildContext context) {
    return CustomCheckboxButton(
      width: 69.h,
      text: "قوتشي",
      value: tf6,
      isRightCheck: true,
      onChange: (value) {
        tf6 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf9(BuildContext context) {
    return CustomCheckboxButton(
      width: 40.h,
      text: "زارا",
      value: tf8,
      isRightCheck: true,
      onChange: (value) {
        tf8 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf11(BuildContext context) {
    return CustomCheckboxButton(
      width: 50.h,
      text: "نايك",
      value: tf10,
      isRightCheck: true,
      onChange: (value) {
        tf10 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf13(BuildContext context) {
    return CustomCheckboxButton(
      width: 51.h,
      text: "أحمر",
      value: tf12,
      isRightCheck: true,
      onChange: (value) {
        tf12 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf15(BuildContext context) {
    return CustomCheckboxButton(
      width: 54.h,
      text: "أصفر",
      value: tf14,
      isRightCheck: true,
      onChange: (value) {
        tf14 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf17(BuildContext context) {
    return CustomCheckboxButton(
      width: 55.h,
      text: "أخضر",
      value: tf16,
      isRightCheck: true,
      onChange: (value) {
        tf16 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf19(BuildContext context) {
    return CustomCheckboxButton(
      width: 65.h,
      text: "برتقالي",
      value: tf18,
      isRightCheck: true,
      onChange: (value) {
        tf18 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf21(BuildContext context) {
    return CustomCheckboxButton(
      width: 50.h,
      text: "أزرق",
      value: tf20,
      isRightCheck: true,
      onChange: (value) {
        tf20 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf23(BuildContext context) {
    return CustomCheckboxButton(
      width: 57.h,
      text: "أسود",
      value: tf22,
      isRightCheck: true,
      onChange: (value) {
        tf22 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf25(BuildContext context) {
    return CustomCheckboxButton(
      width: 44.h,
      text: "بني",
      value: tf24,
      isRightCheck: true,
      onChange: (value) {
        tf24 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf27(BuildContext context) {
    return CustomCheckboxButton(
      width: 59.h,
      text: "رمادي",
      value: tf26,
      isRightCheck: true,
      onChange: (value) {
        tf26 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf29(BuildContext context) {
    return CustomCheckboxButton(
      width: 74.h,
      text: "بنفسجي",
      value: tf28,
      isRightCheck: true,
      onChange: (value) {
        tf28 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf31(BuildContext context) {
    return CustomCheckboxButton(
      width: 56.h,
      text: "وردي",
      value: tf30,
      isRightCheck: true,
      onChange: (value) {
        tf30 = value;
      },
    );
  }

  /// Section Widget
  Widget _buildTf32(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 713.v),
        padding: EdgeInsets.symmetric(
          horizontal: 37.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomElevatedButton(
              width: 150.h,
              text: "إلغاء",
              margin: EdgeInsets.only(
                left: 6.h,
                bottom: 7.v,
              ),
              buttonStyle: CustomButtonStyles.fillBlueGrayTL8,
              buttonTextStyle: CustomTextStyles.titleSmallErrorContainer,
            ),
            CustomElevatedButton(
              width: 152.h,
              text: "فلترة البحث",
              margin: EdgeInsets.only(bottom: 7.v),
            ),
          ],
        ),
      ),
    );
  }
}
