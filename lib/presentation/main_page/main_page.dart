import '../main_page/widgets/framethirteen_item_widget.dart';
import '../main_page/widgets/k0_item_widget.dart';
import '../main_page/widgets/widget_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';
import 'package:noor_s_application1/widgets/custom_search_view.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_how_many_picses_dialog/main_page_display_a_product_how_many_picses_dialog.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController2 =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController3 =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController4 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  _buildThirtySix(context),
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Text("العروض الجديد",
                                style: CustomTextStyles
                                    .titleSmallErrorContainerBold_1)),
                        SizedBox(height: 15.v),
                        _buildWidget2(context),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 4.v,
                                child: AnimatedSmoothIndicator(
                                    activeIndex: sliderIndex,
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 5,
                                        activeDotColor:
                                            theme.colorScheme.primary,
                                        dotColor: theme
                                            .colorScheme.errorContainer
                                            .withOpacity(1),
                                        activeDotScale: 2.0,
                                        dotHeight: 2.v,
                                        dotWidth: 17.h)))),
                        SizedBox(height: 29.v),
                        Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Text("المنتجات الأكثر طلباً",
                                style: CustomTextStyles
                                    .titleSmallErrorContainerBold_1)),
                        SizedBox(height: 23.v),
                        _buildFrameTwelve(context),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Text("تخفيضات",
                                style: CustomTextStyles
                                    .titleSmallErrorContainerBold_1)),
                        SizedBox(height: 23.v),
                        _buildFrameThirteen(context),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(right: 25.h),
                            child: Text("المنتجات الحصرية",
                                textAlign: TextAlign.right,
                                style: CustomTextStyles
                                    .titleSmallErrorContainerBold_1)),
                        SizedBox(height: 17.v),
                        _buildShoppingbagFILLwghtGRADopsz3(context),
                        SizedBox(height: 17.v),
                        _buildShoppingbagFILLwghtGRADopsz6(context),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle20,
                            height: 68.v,
                            width: 426.h)
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildThirtySix(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillGray,
        child: Column(children: [
          CustomAppBar(
              height: 62.v,
              leadingWidth: 50.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgShoppingBagFiErrorcontainer,
                  margin: EdgeInsets.only(left: 26.h, top: 21.v, bottom: 17.v)),
              title: AppbarTitleImage(
                  imagePath: ImageConstant.imgVector,
                  margin: EdgeInsets.only(left: 37.h)),
              actions: [
                AppbarSubtitleFive(
                    text: "محمد علي",
                    margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v)),
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse2,
                    margin: EdgeInsets.only(left: 13.h, top: 19.v, right: 38.h))
              ],
              styleType: Style.bgShadow),
          SizedBox(height: 22.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 23.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text("الصفحة الرئيسية",
                            style:
                                CustomTextStyles.titleSmallErrorContainer15)),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorErrorcontainer,
                        height: 18.v,
                        width: 16.h,
                        margin: EdgeInsets.only(left: 13.h))
                  ]))),
          SizedBox(height: 27.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 41.h),
              child: CustomSearchView(
                  controller: searchController, hintText: "بحث عن منتج")),
          SizedBox(height: 16.v)
        ]));
  }

  /// Section Widget
  Widget _buildWidget2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CarouselSlider.builder(
            options: CarouselOptions(
                height: 158.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  sliderIndex = index;
                }),
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return WidgetItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        height: 26.v,
        width: 153.h,
        text: "إضافة إلى السلة",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        buttonStyle: CustomButtonStyles.fillPrimaryTL5,
        buttonTextStyle: theme.textTheme.labelLarge!,
        onPressed: () {
          onTaptf(context);
        });
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomTextFormField(
            controller: shoppingbagFILLwghtGRADopszController,
            hintText: "إضافة إلى السلة",
            prefix: Container(
                margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
                child: CustomImageView(
                    imagePath:
                        ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                    height: 21.adaptSize,
                    width: 21.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 26.v)));
  }

  /// Section Widget
  Widget _buildFrameTwelve(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              decoration: AppDecoration.outlineGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 7.v),
                            child: Column(children: [
                              _buildSixtySix(context,
                                  image: ImageConstant.imgRectangle12,
                                  onTapImage: () {
                                onTapImage(context);
                              }),
                              SizedBox(height: 1.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 5.h),
                                  child: _buildWidget(context, widget: "أسود")),
                              SizedBox(height: 6.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 9.h, right: 5.h),
                                  child: _buildSixHundredFifty(context,
                                      sixHundredFifty: "65.0 د.ل",
                                      nike: "الماركة : Nike")),
                              SizedBox(height: 9.v),
                              _buildTf(context)
                            ])),
                        Container(
                            height: 252.v,
                            width: 173.h,
                            margin: EdgeInsets.only(left: 230.h),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 252.v,
                                          width: 173.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(8.h),
                                              border: Border.all(
                                                  color: appTheme.gray40003,
                                                  width: 1.h),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: theme.colorScheme
                                                        .errorContainer
                                                        .withOpacity(0.08),
                                                    spreadRadius: 2.h,
                                                    blurRadius: 2.h,
                                                    offset: Offset(0, 0))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 9.h,
                                              right: 5.h,
                                              bottom: 7.v),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildWidget(context,
                                                    widget: "أسود"),
                                                SizedBox(height: 5.v),
                                                _buildSixHundredFifty(context,
                                                    sixHundredFifty: "65.0 د.ل",
                                                    nike: "الماركة : Nike"),
                                                SizedBox(height: 11.v),
                                                _buildShoppingbagFILLwghtGRADopsz(
                                                    context)
                                              ]))),
                                  _buildSixtySix(context,
                                      image: ImageConstant.imgRectangle12,
                                      onTapImage: () {
                                    onTapImage1(context);
                                  })
                                ]))
                      ])))),
          Expanded(
              child: SizedBox(
                  height: 252.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(left: 30.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 27.h);
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return K0ItemWidget(onTapImgWidget: () {
                          onTapImgWidget(context);
                        }, onTaptf: () {
                          onTaptf(context);
                        });
                      })))
        ]));
  }

  /// Section Widget
  Widget _buildFrameThirteen(BuildContext context) {
    return SizedBox(
        height: 252.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 25.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 30.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return FramethirteenItemWidget(onTapImgWidget: () {
                onTapImgWidget(context);
              }, onTaptf: () {
                onTaptf(context);
              });
            }));
  }

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
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz2(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController2,
        hintText: "إضافة إلى السلة",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz3(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 15.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildSixtySix(context,
                            image: ImageConstant.imgRectangle121),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: _buildWidget1(context, widget: "بني")),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h, right: 5.h),
                            child: _buildSixHundredFifty(context,
                                sixHundredFifty: "65.0 د.ل",
                                nike: "الماركة : Nike")),
                        SizedBox(height: 11.v),
                        _buildShoppingbagFILLwghtGRADopsz1(context),
                        SizedBox(height: 7.v)
                      ]))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 15.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildSixtySix(context,
                            image: ImageConstant.imgRectangle122),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: _buildWidget1(context, widget: "بني")),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h, right: 5.h),
                            child: _buildSixHundredFifty(context,
                                sixHundredFifty: "65.0 د.ل",
                                nike: "الماركة : Nike")),
                        SizedBox(height: 11.v),
                        _buildShoppingbagFILLwghtGRADopsz2(context),
                        SizedBox(height: 7.v)
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz4(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController3,
        hintText: "إضافة إلى السلة",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz5(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController4,
        hintText: "إضافة إلى السلة",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz6(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 15.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildSixtySix(context,
                            image: ImageConstant.imgRectangle123),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: _buildWidget1(context, widget: "بني")),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h, right: 5.h),
                            child: _buildSixHundredFifty(context,
                                sixHundredFifty: "65.0 د.ل",
                                nike: "الماركة : Nike")),
                        SizedBox(height: 11.v),
                        _buildShoppingbagFILLwghtGRADopsz4(context),
                        SizedBox(height: 7.v)
                      ]))),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 15.h),
                      decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildSixtySix(context,
                            image: ImageConstant.imgRectangle124),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: _buildWidget1(context, widget: "بني")),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 9.h, right: 5.h),
                            child: _buildSixHundredFifty(context,
                                sixHundredFifty: "65.0 د.ل",
                                nike: "الماركة : Nike")),
                        SizedBox(height: 11.v),
                        _buildShoppingbagFILLwghtGRADopsz5(context),
                        SizedBox(height: 7.v)
                      ])))
            ])));
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
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
    ]);
  }

  /// Common widget
  Widget _buildSixtySix(
    BuildContext context, {
    required String image,
    Function? onTapImage,
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
              alignment: Alignment.center,
              onTap: () {
                onTapImage!.call();
              }),
          Padding(
              padding: EdgeInsets.only(top: 9.v, right: 9.h),
              child: CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFavoriteFill0)))
        ]));
  }

  /// Common widget
  Widget _buildWidget1(
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

  /// Navigates to the mainPageDisplayAProductScreen when the action is triggered.
  onTapImgWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductScreen);
  }

  /// Displays a dialog with the [MainPageDisplayAProductHowManyPicsesDialog] content.
  onTaptf(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: MainPageDisplayAProductHowManyPicsesDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the mainPageDisplayAProductScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductScreen);
  }

  /// Navigates to the mainPageDisplayAProductScreen when the action is triggered.
  onTapImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductScreen);
  }
}
