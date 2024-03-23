import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:noor_s_application1/controllers/AuthController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/models/Cities.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/register_log_in_one_page/register_log_in_one_page.dart';
import 'package:noor_s_application1/widgets/custom_checkbox_button.dart';
import 'package:noor_s_application1/widgets/custom_drop_down.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';

class RegisterCreateAnAccountOnePage extends StatefulWidget {
  const RegisterCreateAnAccountOnePage({Key? key}) : super(key: key);

  @override
  RegisterCreateAnAccountOnePageState createState() =>
      RegisterCreateAnAccountOnePageState();
}

bool isPasswordVisible = false;
bool isChecked = false;
TextEditingController nameController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController addressController = TextEditingController();
String cityname="";
double totalprice=0;

// ignore_for_file: must_be_immutable
class RegisterCreateAnAccountOnePageState
    extends State<RegisterCreateAnAccountOnePage>
    with AutomaticKeepAliveClientMixin<RegisterCreateAnAccountOnePage> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool tf = false;

  @override
  bool get wantKeepAlive => true;
  bool isLoaded = false;
  @override
  final AuthController authController = Get.put(AuthController());
  final AuthController cityController = Get.put(AuthController());
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 48.v),
                  SizedBox(
                      height: 557.v,
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 37.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildTextInputAndLabel(
                                            context,
                                            nameController,
                                            "ادخل اسمك بالكامل",
                                            "الأسم"),
                                        SizedBox(height: 31.v),
                                        _buildTextInputAndLabel(
                                            context,
                                            emailController,
                                            "ادخل الإيميل الإلكتروني",
                                            "البريد الإلكتروني"),
                                        SizedBox(height: 29.v),
                                        _buildTextInputAndLabel3(context),
                                        SizedBox(height: 31.v),
                                        _buildTextInputAndLabel(
                                            context,
                                            phoneNumberController,
                                            "ادخل رقم الهاتف",
                                            "رقم الهاتف"),
                                        SizedBox(height: 29.v),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [

                                                          DropdownButton<City>(
                                                            value: authController
                                                                    .selectedCity ??
                                                                null,
                                                            items: controller.cities
                                                                .map((City city) {
                                                              return DropdownMenuItem<

                                                                  City>(
                                                                value: city,
                                                                child:
                                                                    Text(city.name),

                                                              );
                                                            }).toList(),
                                                            onChanged:

                                                                (City? selectedCity) {
                                                                  cityname=  selectedCity!.name;
                                                              authController
                                                                  .setSelectedCity(
                                                                      selectedCity);
                                                            },
                                                          ),
                                                          SizedBox(width: 50,),
                                                          Text("اختار المدينة"),
                                                        ],
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),

                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 29.v),
                                        _buildTf2(context),

                                        /*
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 63.h, right: 14.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 1.v,
                                                                  bottom: 7.v),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "إذا كنت تمتلك حساب فيجب عليك ",
                                                                        style: CustomTextStyles
                                                                            .bodySmallErrorContainer12),
                                                                    TextSpan(
                                                                        text:
                                                                            " "),
                                                                    TextSpan(
                                                                        text:
                                                                            "تسجيل الدخول",
                                                                        style: CustomTextStyles
                                                                            .labelLargePrimary_1
                                                                            .copyWith(
                                                                                decoration: TextDecoration.underline))
                                                                  ]),
                                                              textAlign: TextAlign
                                                                  .right)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFlagFill1Wght,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          margin: EdgeInsets.only(
                                                              left: 8.h))
                                                    ])))
                                       */
                                      ]))),
                        ]),
                      ))
                ])))));
  }

  /// Section Widget
  Widget _buildTextInputAndLabel3(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: 17),
            child: Text(
              "ادخل الرمز السري",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                child: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  size: 24,
                  color: Colors.black,
                  // يمكنك إضافة حجم وهامش إضافي حسب الحاجة
                ),
              ),
              Expanded(
                child: TextField(
                  controller: passwordController,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration.collapsed(
                    hintText: "الرمز السري",
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    hintTextDirection: TextDirection.rtl,
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: CustomCheckboxButton(
                alignment: Alignment.centerRight,
                width: 179.h,
                text: "الموافقة على سياسات التطبيق",
                value: tf,
                textStyle: CustomTextStyles.bodySmallErrorContainer,
                isRightCheck: true,
                onChange: (value) {
                  setState(() {
                    tf = value;
                  });
                })));
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 32.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: CustomElevatedButton(
                          text: "إلغاء",
                          margin: EdgeInsets.only(right: 15.h, bottom: 43.v),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallErrorContainer,
                          onPressed: () {
                            onTaptf(context);
                          })),
                  Container(
                    child: !isLoaded
                        ? CustomElevatedButton(
                            width: 150.h,
                            text: "إنشاء حساب",
                            onPressed: () async {
                              if (nameController.value.text == "" ||
                                  passwordController.value.text == "" ||
                                  emailController.value.text == "" ||
                                  phoneNumberController.value.text == "" ||
                                 cityname == "") {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    CustomsnackBar(
                                        'يرجي إدخال الخانات المطلوبة',
                                        'موافق',
                                        Colors.red));
                                setState(() {
                                  isLoaded = false;
                                });
                              } else {
                                setState(() {
                                  isLoaded = true;
                                });
                                await authController
                                    .register(
                                        nameController.text,
                                        phoneNumberController.text,
                                    cityname,
                                        emailController.text,
                                        passwordController.text,
                                        "")
                                    .then((value) async => {
                                          if (authController.status == 0)
                                            {
                                              print("sssss3"),
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(CustomsnackBar(
                                                      'خطاء في اسم المستخدم او كلمة المرور',
                                                      'موافق',
                                                      Colors.red)),
                                              setState(() {
                                                isLoaded = false;
                                              }),
                                            },
                                          if (authController.status == 1)
                                            {
                                              print("sssss"),
                                              Get.to(MainPageOneScreen()),
                                              setState(() {
                                                isLoaded = false;
                                              }),
                                              print("sssss2"),
                                            }
                                        });
                              }
                            })
                        : Center(
                            child: LoadingAnimationWidget.discreteCircle(
                              thirdRingColor: Colors.orange.shade100,
                              secondRingColor: Colors.orange.shade500,
                              color: Colors.orange,
                              size: 20,
                            ),
                          ),
                  )
                ])));
  }

  /// Common widget
  Widget _buildTextInputAndLabel(
    BuildContext context,
    TextEditingController controller,
    String hintText,
    String labelText,
  ) {
    return Column(children: [
      Align(
          alignment: Alignment.centerRight,
          child: Padding(
              padding: EdgeInsets.only(right: 17.h),
              child: Text(labelText,
                  style: CustomTextStyles.titleSmallErrorContainerBold_1))),
      SizedBox(height: 11.v),
      Container(
          width: 354.h,
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
          decoration: AppDecoration.outlineBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: TextField(
            controller: controller,
            decoration: InputDecoration.collapsed(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              hintTextDirection: TextDirection.rtl,
            ),
          ))
    ]);
  }

  /// Navigates to the registerChooseATypeOfAccountsOneScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerChooseATypeOfAccountsOneScreen);
  }
}
