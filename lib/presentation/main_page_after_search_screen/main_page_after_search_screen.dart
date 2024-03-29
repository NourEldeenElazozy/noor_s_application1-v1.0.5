import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';

class MainPageAfterSearchScreen extends StatelessWidget {
  MainPageAfterSearchScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
            padding: EdgeInsets.only(top: 994.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildFavoriteFILLZero(
                          context,
                          image: ImageConstant.imgRectangle123,
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: _buildWidget(
                            context,
                            widget: "بني",
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            right: 5.h,
                          ),
                          child: _buildSixHundredFifty(
                            context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike",
                          ),
                        ),
                        SizedBox(height: 11.v),
                        CustomTextFormField(
                          width: 153.h,
                          controller: shoppingbagFILLwghtGRADopszController,
                          hintText: "إضافة إلى السلة",
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgShoppingbagfill0wght400grad0opsz242,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 26.v,
                          ),
                        ),
                        SizedBox(height: 7.v),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.h),
                    decoration: AppDecoration.outlineGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildFavoriteFILLZero(
                          context,
                          image: ImageConstant.imgRectangle124,
                        ),
                        SizedBox(height: 4.v),
                        Padding(
                          padding: EdgeInsets.only(right: 5.h),
                          child: _buildWidget(
                            context,
                            widget: "بني",
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            right: 5.h,
                          ),
                          child: _buildSixHundredFifty(
                            context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike",
                          ),
                        ),
                        SizedBox(height: 11.v),
                        CustomTextFormField(
                          width: 153.h,
                          controller: shoppingbagFILLwghtGRADopszController1,
                          hintText: "إضافة إلى السلة",
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgShoppingbagfill0wght400grad0opsz242,
                              height: 21.adaptSize,
                              width: 21.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 26.v,
                          ),
                        ),
                        SizedBox(height: 7.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 35.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorErrorcontainer,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 23.h),
        hintText: "بحث عن منتج",
        controller: searchController,
      ),
    );
  }

  /// Common widget
  Widget _buildFavoriteFILLZero(
    BuildContext context, {
    required String image,
  }) {
    return SizedBox(
      height: 167.v,
      width: 173.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: image,
            height: 167.v,
            width: 173.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(
                top: 9.v,
                right: 9.h,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.circleBorder14,
              ),
              child: Container(
                height: 29.adaptSize,
                width: 29.adaptSize,
                padding: EdgeInsets.all(2.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteFill0,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteFill1,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 1.v,
            bottom: 3.v,
          ),
          child: Text(
            widget,
            textAlign: TextAlign.right,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.gray80003,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPaletteFill1W,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 6.h),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSixHundredFifty(
    BuildContext context, {
    required String sixHundredFifty,
    required String nike,
  }) {
    return SizedBox(
      width: 159.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sixHundredFifty,
            textAlign: TextAlign.right,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              nike,
              textAlign: TextAlign.right,
              style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
