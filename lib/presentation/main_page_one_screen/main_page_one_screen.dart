import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_screen/main_page_display_a_product_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_bill_one_screen/shopping_bag_bill_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_screen/shopping_bag_screen.dart';

import '../main_page_one_screen/widgets/widget1_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page/main_page.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';
import 'package:noor_s_application1/widgets/custom_search_view.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';
// ignore_for_file: must_be_immutable
class MainPageOneScreen extends StatelessWidget {
  MainPageOneScreen({Key? key}) : super(key: key);
  final ProductsController productController = Get.put(ProductsController());
  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;
   bool showResults=false;
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

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {


    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(

            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildShoppingBagFI(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(right: 1.h),
                              child: Column(
                                  children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 41.h, right: 40.h),
                                    child: Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: CustomSearchView(

                                        onChanged: (value) {

                                          if (value.isNotEmpty) {
                                            productController.getproduct(searchController.value.text);
                                          }
                                        },
                                        controller: searchController,
                                        hintText: 'بحث عن منتج',
                                      ),
                                    ),
                                    ),
                                    Obx(() {
                                      if (searchController.value.text.length <= 0) {

                                        return Container();
                                      }
                                      if (productController.Searchproducts.isEmpty || searchController.value.text.length <= 0 ) {



                                        return Container(); // Show an empty container when there are no results
                                      } else {
                                        return Directionality(
                                          textDirection: TextDirection.rtl,
                                          child: Container(

                                            height: 250,
                                            width: 250,
                                            child: ListView.builder(
                                              itemCount: productController.products.length,
                                              itemBuilder: (context, index) {
                                                final result = productController.products[index].name;
                                                return ListTile(


                                                  title:  InkWell(
                                                    child: Text(productController.products[index].name,
                                                        style: CustomTextStyles
                                                            .titleMediumBlack90004),
                                                  ),
                                                  // Customize the list item as needed
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      }
                                    }),
                                SizedBox(height: 29.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 23.h),
                                        child: Text("العروض الجديد",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainerBold_1))),
                                SizedBox(height: 15.v),
                                _buildWidget1(context),
                                SizedBox(height: 7.v),
                                SizedBox(
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
                                            dotWidth: 17.h))),
                                SizedBox(height: 21.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 23.h),
                                        child: Text("المنتجات الأكثر طلباً",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainerBold_1))),
                                SizedBox(height: 31.v),
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
                                              itemCount: productController.productstype.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => MainPageDisplayAProductScreen(productId: productController.products[index].id), // استبدل 123 بقيمة البرامتر الفعلية أو اتركها كـ null إذا كنت لا ترغب في تمريره
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 220,
                                                    height: 100,

                                                    child: _buildShoppingbagFILLwghtGRADopsz5(
                                                        context,
                                                        productController.products[index].name,
                                                        "s",
                                                        productController.products[index].price,
                                                        "https://zadstorely.ly/public/assets/images/products/${productController.products[index].img}"
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      }



                                    }),
                                SizedBox(height: 45.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 25.h),
                                        child: Text("المنتجات الحصرية",
                                            style: CustomTextStyles
                                                .titleSmallErrorContainerBold_1))),
                                SizedBox(height: 15.v),
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
                                          itemCount: productController.products.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => MainPageDisplayAProductScreen(productId: productController.products[index].id), // استبدل 123 بقيمة البرامتر الفعلية أو اتركها كـ null إذا كنت لا ترغب في تمريره
                                                  ),
                                                );
                                              },
                                              child: Container(
                                                width: 220,
                                                height: 100,

                                                child: _buildShoppingbagFILLwghtGRADopsz5(
                                                    context,
                                                    productController.products[index].name,
                                                    "s",
                                                    productController.products[index].price,
                                                    "https://zadstorely.ly/public/assets/images/products/${productController.products[index].img}"
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    );
                                  }



                                }),

                                SizedBox(height: 17.v),

                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle2068x427,
                                    height: 68.v,
                                    width: 427.h)
                              ]))))
                ])),
   bottomNavigationBar: CustomBottomBar(
   onChanged: (type) {
    if (type==BottomBarEnum.Homefill0wght){
     Navigator.push(context, MaterialPageRoute(builder: (context) =>ShoppingBagScreen()));
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
        ),
    );
  }

  /// Section Widget
  Widget _buildShoppingBagFI(BuildContext context) {
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
          SizedBox(height: 26.v)
        ]));
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
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
              return Widget1ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) {
    return CustomTextFormField(
        width: 153.h,
        controller: shoppingbagFILLwghtGRADopszController,
        hintText: "تمت الإضافة",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 2.v, 28.h, 3.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242,
                height: 21.adaptSize,
                width: 21.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 26.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray40003);
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
        padding: EdgeInsets.only(left: 27.h, right: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
                        image: ImageConstant.imgRectangle12, onTapImage: () {
                      onTapImage(context);
                    }),
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
                    _buildShoppingbagFILLwghtGRADopsz(context),
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
                    _buildShoppingbagFILLwghtGRADopsz3(context),
                    SizedBox(height: 7.v)
                  ]))),

        ]));
  }

  /// Section Widget


  /// Section Widget


  /// Section Widget


  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
     print(getCurrentRoute);

     Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type)!);

    });
  }

  /// Common widget
  Widget _buildFavoriteFILLZero(
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
              width: 500.h,
              radius: BorderRadius.circular(8.h),
              fit:BoxFit.cover ,
              alignment: Alignment.center,
           /*
              onTap: () {
                onTapImage!.call();
              }
            */

              ),
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {

      case BottomBarEnum.Vector20x20:
        return AppRoutes.settingsPage;
      case BottomBarEnum.Vectorerrorcontainer18x20:
        return AppRoutes.sectionsOnePage;
      case BottomBarEnum.Vectorerrorcontainer19x19:
        return AppRoutes.sectionsPage;
      case BottomBarEnum.Homefill0wght:
        return AppRoutes.mainPageOneScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {

    switch (currentRoute) {
      case AppRoutes.settingsPage:
        return SettingsPage();
      case AppRoutes.sectionsOnePage:
        return SectionsOnePage();
      case AppRoutes.sectionsPage:
        return SectionsPage();
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the mainPageDisplayAProductScreen when the action is triggered.
  onTapImage(BuildContext context) {

    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductScreen);
  }
}
