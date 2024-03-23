import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_s_application1/controllers/AuthController.dart';
import 'package:noor_s_application1/controllers/ProductsController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/models/Cities.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_one_page/register_create_an_account_one_page.dart';
import 'package:noor_s_application1/widgets/custom_drop_down.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:noor_s_application1/utils.dart';
// ignore_for_file: must_be_immutable
class ShoppingBagSeriousPaymentOneScreen extends StatelessWidget {
  ShoppingBagSeriousPaymentOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];
  final ProductsController productController = Get.put(ProductsController());
  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();
  final ProductsController productsController = Get.put(ProductsController());
  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();
  double totalPrice=0;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthController authController = Get.put(AuthController());
  TextEditingController fullNameController = TextEditingController();
  TextEditingController CopunController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildWidget1(context),
                  SizedBox(height: 18.v),
                  _buildArrowLeft(context),
                  SizedBox(height: 36.v),

                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 50.adaptSize,
                        padding: EdgeInsets.symmetric(
                            horizontal: 19.h, vertical: 13.v),
                        decoration: AppDecoration.fillGray40003.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder25),
                        child: Text("2", style: theme.textTheme.titleLarge)),
                    Padding(
                        padding: EdgeInsets.only(top: 25.v, bottom: 24.v),
                        child: SizedBox(
                            width: 43.h,
                            child: Divider(
                                color: appTheme.gray40003, indent: 2.h))),
                    Container(
                        width: 50.adaptSize,

                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 13.v),
                        decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder25),
                        child: Text("1", style: theme.textTheme.titleLarge))
                  ]),
                  SizedBox(height: 14.v),

                  SizedBox(height: 40.v),



                      Container(
                        width:350.h,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Container(
                                  child: GetBuilder<AuthController>(
                                    builder: (controller) {
                                      if (controller.isLoading ==
                                          true) {
                                        return Container(
                                            width: 50,
                                            height: 50,
                                            child:
                                            CircularProgressIndicator()); // عرض علامة التحميل
                                      } else {
                                        return Container(

                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [

                                              Text("اختار المدينة"),
                                              SizedBox(width: 50,),
                                              Container(

                                                child: DropdownButton<City>(
                                                  value: authController.selectedCity ?? null,
                                                  items: controller.cities.map((City city) {
                                                    return DropdownMenuItem<City>(
                                                      value: city,
                                                      child: Text(city.name),
                                                    );
                                                  }).toList(),
                                                  onChanged: (City? selectedCity) {
                                                    print(selectedCity!.price.toString());
                                                    authController.setSelectedCity(selectedCity);
                                                    totalPrice=0;
                                                    totalPrice= productController.totalPricecart.value = double.parse(productController.totalPrice.toString()) + selectedCity!.price;
                                                  },
                                                ),
                                              ),

                                            ],
                                          ),
                                        );

                                      }
                                    },
                                  ),

                                ),
                                Divider(),
                                TextFormField(
                                  controller: fullNameController,
                                  decoration: InputDecoration(labelText: 'الاسم الكامل'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'الاسم الكامل مطلوب';
                                    } else if (value.length <= 10) {
                                      return 'الاسم الكامل يجب أن يتكون من أكثر من 10 أحرف';
                                    }
                                    return null;
                                  },
                                ),

                                TextFormField(
                                  controller: addressController,
                                  decoration: InputDecoration(labelText: 'العنوان'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'العنوان مطلوب';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: phoneNumberController,
                                  decoration: InputDecoration(labelText: 'رقم الهاتف'),
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'رقم الهاتف مطلوب';
                                    } else if (!value.startsWith('09')) {
                                      return 'رقم الهاتف يجب أن يبدأ بـ 09';
                                    } else if (value.length != 10) {
                                      return 'رقم الهاتف يجب أن يتكون من 10 أرقام';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  controller: CopunController,
                                  decoration: InputDecoration(labelText: 'رمز القسيمة'),

                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                  SizedBox(height: 37.v),

                  CustomElevatedButton(
                      text: "استمرار",
                      margin: EdgeInsets.only(left: 32.h, right: 36.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumWhiteA700ExtraBold,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          onTaptf(context);
                        }

                      }),

                  Container(
                      height: 68.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray50))
                ])))));
  }

  /// Section Widget
  Widget _buildWidget1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 14.v),
        decoration: AppDecoration.outlineErrorContainer3,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 10.v),
              Align(
                  alignment: Alignment.centerRight,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtWidget(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 3.v),
                            child: Text(empName.toString(),
                                style: CustomTextStyles
                                    .labelLargeErrorContainer_1))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(14.h),
                        margin: EdgeInsets.only(left: 13.h),
                        onTap: () {
                          onTapImgCircleImage(context);
                        })
                  ])),
              SizedBox(height: 25.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
                          child: Obx(
                                () {
                               totalPrice = productController.totalPricecart.value;
                              return Text(
                                "السعر الكلي: ${totalPrice == 0 ? productController.totalPrice.toString() : totalPrice.toString()} د.ل",
                                style: CustomTextStyles.titleSmallGray80001,
                              );
                            },
                          ),
                        ),
                        Spacer(flex: 49),
                        SizedBox(
                            height: 41.v,
                            child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: theme.colorScheme.errorContainer
                                    .withOpacity(1))),
                        Spacer(flex: 50),
                        Padding(
                            padding: EdgeInsets.only(top: 10.v, bottom: 14.v),
                            child: Text("عدد المنتجات ${productController.totalQuantity.toString()}",
                                style: CustomTextStyles.titleSmallGray80001))
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 18.h, right: 27.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftErrorcontainer,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(top: 1.v, bottom: 4.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Text("اتمام عملية الشراء",
                  style: CustomTextStyles.titleSmallErrorContainer15)
            ]));
  }

  /// Section Widget


  /// Section Widget


  /// Section Widget

  /// Section Widget


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

  /// Navigates to the profileScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgCircleImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the shoppingBagPaymentTypeScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shoppingBagPaymentTypeScreen);
  }

  /// Navigates to the shoppingBagSeriousPaymenyTwoScreen when the action is triggered.
  onTaptf(BuildContext context) {
    for (var product in  productsController.cartProductList) {
      productsController.addtocart(product['id'], product['quantity']);

    }

    Navigator.pushNamed(context, AppRoutes.shoppingBagSeriousPaymenyTwoScreen);
  }
}
