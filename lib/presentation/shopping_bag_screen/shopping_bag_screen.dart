import 'package:flutter/material.dart';
import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/models/User.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';
import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';
import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:noor_s_application1/presentation/shopping_bag_delete_all_products_dialog/shopping_bag_delete_all_products_dialog.dart';
import 'package:noor_s_application1/presentation/shopping_bag_delete_one_product_dialog/shopping_bag_delete_one_product_dialog.dart';
import 'package:get/get.dart';
// ignore_for_file: must_be_immutable
class ShoppingBagScreen extends StatelessWidget {
  ShoppingBagScreen({Key? key}) : super(key: key);
  final ProductsController productController = Get.put(ProductsController());
  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();

  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("cartProductList");
    print(productController.cartProductList.length);
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
                    child: Column(

                        children: [
                      _buildWidget1(context),
                      SizedBox(height: 32.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 50.h),
                              child: Text("عدد المنتجات ${productController.totalQuantity.toString()}",
                                  style:
                                      CustomTextStyles.bodyMediumGray70001))),
                      SizedBox(height: 18.v),
                      Container(

                        width: double.infinity,
                        height: 350,
                        child: Obx(() {
                          return ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: productController.cartProductList.length,
                            itemBuilder: (context, index) {
                              final product = productController.cartProductList[index];
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: _buildTf1(
                                  context,
                                  product['name'],
                                  product['image'],
                                  product['quantity'],
                                  product['price'],
                                  product['id'],
                                ),
                              );
                            },
                          );
                        }),
                      ),

                     Container(

                         child: _buildNine(context)),


                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        leadingWidth: 50.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgShoppingBagFi,
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
              margin: EdgeInsets.fromLTRB(23.h, 29.v, 15.h, 3.v),
              onTap: () {
                onTapWidget(context);
              }),
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse2,
              margin: EdgeInsets.only(left: 13.h, top: 19.v, right: 38.h))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 48.h, right: 15.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        productController.RemoveProducts();
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 6.v),
                          child: Text("إفراغ السلة",
                              style: CustomTextStyles.titleSmallBold_2))),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(top: 4.v, bottom: 2.v),
                      child: Text("سلة المنتجات",
                          style: CustomTextStyles.titleSmallErrorContainer15)),
                  CustomImageView(
                      imagePath: ImageConstant.imgShoppingBagFiWhiteA700,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(left: 11.h))
                ])));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context,int id) {
    return CustomElevatedButton(
        height: 28.v,
        width: 118.h,
        text: "حذف المنتج",
        margin: EdgeInsets.only(top: 69.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 11.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgDeletefill1wght400grad0opsz241,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        buttonStyle: CustomButtonStyles.fillGrayTL4,
        buttonTextStyle: CustomTextStyles.labelLargePrimary13,
        onPressed: () {
          productController.deleteProduct(id);

        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context,String name , String image,int quantity,double price,int id) {


    return Container(

        margin: EdgeInsets.symmetric(horizontal: 21.h),
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.outlineGray300
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {

                        productController.deleteProduct(id);
                      },
                      child: _buildTf(context,id)),

                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 6.v, bottom: 34.v),
                  child: Column(children: [
                    Text(name,
                        style: CustomTextStyles.titleSmallErrorContainer15),
                    SizedBox(height: 12.v),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text(price.toString(),
                            style:
                                CustomTextStyles.titleMediumPrimaryExtraBold))
                  ])),
              Container(
                height: 110.v,
                width: 120.h,
                child: CustomImageView(
                    imagePath: image,
                    height: 100.v,
                    width: 100.h,
                    radius: BorderRadius.circular(4.h),
                    margin: EdgeInsets.only(left: 16.h, right: 2.h)),
              )
            ]));
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return CustomElevatedButton(
        width: 173.h,
        text: "حذف السلة",
        buttonStyle: CustomButtonStyles.fillRedA,
        onPressed: () {
       productController.RemoveProducts();
        });
  }

  /// Section Widget
  Widget _buildTf3(BuildContext context) {
    return CustomElevatedButton(
        width: 171.h,
        text: "شراء المنتجات",

        onPressed: () {
          for (var product in productController.cartProductList){

            productController.addtocart(product["id"],product["quantity"] );
          }


          onTaptf2(context);
        });
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
   return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
       width: 400.h,
       padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),

       child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

         SizedBox(height: 15.v),
         Padding(
          padding: EdgeInsets.only(right: 25.h),
          child: Text(
           "عدد المنتجات  :${productController.totalQuantity.toString()}",
           style: CustomTextStyles.titleSmallGray90001,
          ),
         ),
         SizedBox(height: 8.v),
         Padding(
          padding: EdgeInsets.only(right: 25.h),
          child: Text(
           "السعر الكلي  : ${productController.totalPrice.toString()} د.ل",
           style: CustomTextStyles.titleSmallGray90001,
          ),
         ),
         SizedBox(height: 15.v),
         Padding(
          padding: EdgeInsets.only(right: 2.h),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            _buildTf2(context),
            _buildTf3(context),
           ],
          ),
         ),
         SizedBox(height: 15.v),
        ],
       ),
      ),
    ),
   );
  }

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
  Widget _buildShoppingbagFILLwghtGRADopsz2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  decoration: AppDecoration.outlineGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildFavoriteFILLZero(context,
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
                    _buildShoppingbagFILLwghtGRADopsz1(context),
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
    return SizedBox(
        width: 159.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
        ]));
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapVector(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Displays a dialog with the [ShoppingBagDeleteAllProductsDialog] content.
  onTapTxtWidget(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ShoppingBagDeleteAllProductsDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [ShoppingBagDeleteOneProductDialog] content.
  onTaptf(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ShoppingBagDeleteOneProductDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Displays a dialog with the [ShoppingBagDeleteAllProductsDialog] content.
  onTaptf1(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ShoppingBagDeleteAllProductsDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  /// Navigates to the shoppingBagPaymentTypeOneScreen when the action is triggered.
  onTaptf2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagPaymentTypeScreen);
  }
}
