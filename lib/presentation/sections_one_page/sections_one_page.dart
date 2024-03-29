import 'package:flutter/material.dart';
import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
// ignore_for_file: must_be_immutable
class SectionsOnePage extends StatelessWidget {
  SectionsOnePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController2 =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController3 =
      TextEditingController();
  final ProductsController productController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomBottomBar(
          onChanged: (type) {

            if (type==BottomBarEnum.mainPageOneScreen){

              Navigator.push(context, MaterialPageRoute(builder: (context) =>MainPageOneScreen()));
            }else if(type==BottomBarEnum.Vectorerrorcontainer19x19){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>SectionsPage()));
            }else if(type==BottomBarEnum.Vectorerrorcontainer18x20){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>SectionsOnePage()));
            }else if(type==BottomBarEnum.Vector20x20){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>SettingsPage()));
            }
            print(type);
          },
        ),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 27.h,
                right: 14.h,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: Text(
                            "المفضلة",
                            style: CustomTextStyles.titleSmallErrorContainer15,
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgFavoriteFill1Errorcontainer,
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          margin: EdgeInsets.only(left: 14.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v),
                  _buildShoppingbagFILLwghtGRADopsz2(context),
                  SizedBox(height: 723.v),
                  //_buildShoppingbagFILLwghtGRADopsz5(context),
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
      height: 62.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgShoppingBagFiErrorcontainer,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 21.v,
          bottom: 17.v,
        ),
      ),
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(left: 37.h),
      ),
      actions: [
        AppbarSubtitleFive(
          text: empName.toString(),
          margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse2,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 19.v,
            right: 38.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
/*
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
          width: 21.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 26.v,
      ),
    );
  }
 */

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz1(BuildContext context) {
    return CustomTextFormField(
      width: 153.h,
      controller: shoppingbagFILLwghtGRADopszController1,
      hintText: "إضافة إلى السلة",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
          height: 21.adaptSize,
          width: 21.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 26.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 9.h,
      ),
      child: Container(
        height: 1000.v,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing:8, // المسافة العمودية بين العناصر
          crossAxisSpacing:2.0,
          children: List.generate(  productController.favProductList.length, (index) {
              return Row(
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
                          image:(productController.favProductList[index]['image']) ,
                        ),
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  productController.favProductList[index]["name"],
                                  style: theme.textTheme.bodySmall,
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            right: 5.h,
                          ),
                          child: _buildSixHundredFifty(
                            context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "",
                          ),
                        ),
                        SizedBox(height: 9.v),
                        //_buildShoppingbagFILLwghtGRADopsz(context),
                        SizedBox(height: 7.v),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 15.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildFavoriteFILLZero(
                            context,
                            image: ImageConstant.imgRectangle12167x173,
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: _buildWidget(
                              context,
                              widget: "بني",
                            ),
                          ),
                          SizedBox(height: 6.v),
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
                          SizedBox(height: 9.v),
                          _buildShoppingbagFILLwghtGRADopsz1(context),
                          SizedBox(height: 7.v),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),

    );
  }

  /// Section Widget


  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz4(BuildContext context) {
    return CustomTextFormField(
      width: 153.h,
      controller: shoppingbagFILLwghtGRADopszController3,
      hintText: "إضافة إلى السلة",
      textInputAction: TextInputAction.done,
      prefix: Container(

        margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
          height: 21.adaptSize,
          width: 21.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 26.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 15.h),
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
                  //_buildShoppingbagFILLwghtGRADopsz3(context),

                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.h),
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
                  _buildShoppingbagFILLwghtGRADopsz4(context),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
        ],
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
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              nike,
              style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(
                color: theme.colorScheme.errorContainer.withOpacity(1),
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
}
