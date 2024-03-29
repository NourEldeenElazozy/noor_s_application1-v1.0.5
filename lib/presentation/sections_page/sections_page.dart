import 'package:get/get.dart';
import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/controllers/SectionsController.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_screen/main_page_display_a_product_screen.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';

import '../sections_page/widgets/framenine_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:noor_s_application1/utils.dart';
// ignore_for_file: must_be_immutable
class SectionsPage extends StatelessWidget {
  final sectionsController = Get.put(SectionsController());
  SectionsPage({Key? key}) : super(key: key);
  final ProductsController productController = Get.put(ProductsController());
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

  TextEditingController shoppingbagFILLwghtGRADopszController5 =
      TextEditingController();
int sex=0;
int section=0;
  RxBool colors = false.obs;
  @override
  Widget build(BuildContext context) {
    sectionsController.fetchProducts();
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
                    padding: EdgeInsets.only(top: 20.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 20.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("الأقسام",
                                                style: CustomTextStyles
                                                    .titleSmallErrorContainer15),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorErrorcontainer16x16,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 14.h,
                                                    top: 2.v,
                                                    bottom: 7.v))
                                          ]))),
                              SizedBox(height: 21.v),
                              GetBuilder<SectionsController>(
                                builder: (controller) {
                                  if (controller.isLoading.value) {
                                    print("controller.isLoading.value ");
                                    print(controller.isLoading);

                                    return Center(child: CircularProgressIndicator());
                                  }

                                  if (controller.error.isNotEmpty) {
                                    return Center(child: Text(controller.error.string));
                                  }

                                  return SizedBox(
                                    height: 80.v,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: 17.h);
                                      },
                                      itemCount: controller.products.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            section=int.parse(controller.products[index].id);
                                          if(controller.sex[index]=="نساء"){
                                            sex=0;
                                          }else{
                                            sex=1;
                                          }
                                 /*
                                            print(controller.sex[index]);
                                            print(controller.products[index].id);
                                            productController.getProductsSection(int.parse(controller.products[index].id),sex);
                                  */
                                          },
                                          child: FramenineItemWidget(controller.products[index].name),
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 39.v),
                              GetBuilder<SectionsController>(
                                builder: (controller) {
                                  if (controller.isLoading.value) {
                                    print("controller.isLoading.value ");
                                    print(controller.isLoading);

                                    return Center(child: CircularProgressIndicator());
                                  }

                                  if (controller.error.isNotEmpty) {
                                    return Center(child: Text(controller.error.string));
                                  }

                                  return Center(
                                    child: SizedBox(
                                      height: 80.v,
                                      child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(width: 17.h);
                                        },
                                        itemCount: controller.sex.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              print("section $section");

                                              if(controller.sex[index]=="نساء"){
                                                sex=0;



                                              }else{
                                                sex=1;

                                              }

                                              print(controller.sex[index]);
                                              print(controller.products[index].id);
                                              productController.getProductsSection(section,sex);

                                            },
                                            child: Center(child: FramenineItemWidget2(controller.sex[index],)),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 39.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 23.h),
                                      child: Text("المنتجات",
                                          style: CustomTextStyles
                                              .titleSmallErrorContainerBold_1))),
                              SizedBox(height: 22.v),
                              Obx(() {
                                if (productController.isLoading.value) {
                                  return Center(child: CircularProgressIndicator());
                                }else{
                                  return  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Container(
                                      height: 200,
                                      width: double.infinity,


                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal, // تحديد الاتجاه الأفقي
                                        itemCount: productController.productsSection.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              print(productController.productsSection.length);
                                              print("idddd ${productController.productsSection[index].id}");
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => MainPageDisplayAProductScreen(productId: productController.productsSection[index].id), // استبدل 123 بقيمة البرامتر الفعلية أو اتركها كـ null إذا كنت لا ترغب في تمريره
                                                ),
                                              );
                                            },
                                            child: Container(
                                              width: 220,
                                              height: 100,

                                              child: _buildShoppingbagFILLwghtGRADopsz5(
                                                  context,
                                                  productController.productsSection[index].name,
                                                  "s",
                                                  productController.productsSection[index].price,
                                                  "https://zadstorely.ly/public/assets/images/products/${productController.productsSection[index].img}"
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                }



                              }),


                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgShoppingBagFiErrorcontainer,
            margin: EdgeInsets.only(left: 26.h, top: 21.v, bottom: 17.v)),
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 37.h),
            onTap: () {
              onTapVector(context);
            }),
        actions: [
          AppbarSubtitleFive(
              text: empName.toString(),
              margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v)),
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse2,
              margin: EdgeInsets.only(left: 13.h, top: 19.v, right: 38.h))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
/*
  Widget _buildFrameNine(BuildContext context) {
    return SizedBox(
        height: 80.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 17.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return FramenineItemWidget();
            }));
  }
 */

  /// Section Widget
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
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v));
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
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
                        image: ImageConstant.imgRectangle12),
                    SizedBox(height: 1.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("أسود",
                                      style: theme.textTheme.bodySmall),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPaletteFill1W,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin:
                                          EdgeInsets.only(left: 6.h, top: 2.v))
                                ]))),
                    SizedBox(height: 6.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 9.v),

                    SizedBox(height: 7.v)
                  ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
                        image: ImageConstant.imgRectangle12167x173),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: "بني")),
                    SizedBox(height: 6.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 9.v),
                    _buildShoppingbagFILLwghtGRADopsz1(context),
                    SizedBox(height: 7.v)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz3(BuildContext context) {
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
  Widget _buildShoppingbagFILLwghtGRADopsz5(BuildContext context,name,mark,  price,img) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 15.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    _buildFavoriteFILLZero(context,
                        image: img),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: name)),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "$price د.ل",
                            nike: "الماركة : $mark")),
                    SizedBox(height: 11.v),
                    //_buildShoppingbagFILLwghtGRADopsz3(context),
                    SizedBox(height: 7.v)
                  ]))),

        ]));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz6(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController4,
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
  Widget _buildShoppingbagFILLwghtGRADopsz7(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController5,
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
  Widget _buildShoppingbagFILLwghtGRADopsz8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero1(context,
                        image: ImageConstant.imgRectangle123),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),

                    SizedBox(height: 7.v)
                  ]))),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero1(context,
                        image: ImageConstant.imgRectangle124),
                    SizedBox(height: 4.v),
                    Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: _buildWidget(context, widget: "بني")),
                    SizedBox(height: 5.v),
                    Padding(
                        padding: EdgeInsets.only(left: 9.h, right: 5.h),
                        child: _buildSixHundredFifty(context,
                            sixHundredFifty: "65.0 د.ل",
                            nike: "الماركة : Nike")),
                    SizedBox(height: 11.v),
                    _buildShoppingbagFILLwghtGRADopsz7(context),
                    SizedBox(height: 7.v)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildFavoriteFILLZero(
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
              style: theme.textTheme.titleSmall!
                  .copyWith(color: theme.colorScheme.primary)),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(nike,
                  style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(
                      color: theme.colorScheme.errorContainer.withOpacity(1))))
        ]));
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String widget,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(widget,
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
  Widget _buildFavoriteFILLZero1(
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

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
