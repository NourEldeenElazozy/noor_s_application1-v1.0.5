import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:noor_s_application1/controllers/AuthController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page/main_page.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_one_page/register_create_an_account_one_page.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:get/get.dart';

class RegisterLogInOnePage extends StatefulWidget {
  const RegisterLogInOnePage({Key? key}) : super(key: key);

  @override
  RegisterLogInOnePageState createState() => RegisterLogInOnePageState();
}

class RegisterLogInOnePageState extends State<RegisterLogInOnePage>
    with AutomaticKeepAliveClientMixin<RegisterLogInOnePage> {
  @override
  bool get wantKeepAlive => true;
  bool isLoaded = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
     isLoaded = false;
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillGray,
                  child: Column(
                      children: [SizedBox(height: 49.v), _buildTf(context)])),
            )));
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 38.h, right: 32.h),
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Column(children: [
                _buildTextInputAndLabel(context, emailController, "ادخل بريدك الإلكتروني", "البريد الإلكتروني"),

                SizedBox(height: 11.v),

              ])),
          Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: Column(children: [
                _buildTextInputAndLabel3(context),

                SizedBox(height: 11.v),

              ])),
          SizedBox(height: 32.v),

          SizedBox(height: 16.v),
          Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: () {
                    onTapTxtWidget(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 32.h),
                      child: Text("نسيت الرمز السري؟",
                          style: CustomTextStyles.bodySmallPrimary.copyWith(
                              decoration: TextDecoration.underline))))),
          SizedBox(height: 115.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 80.h, right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v, bottom: 7.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "إذا كنت لا تمتلك حساب فيجب عليك ",
                                      style: CustomTextStyles
                                          .bodySmallErrorContainer12),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "إنشاء حساب",
                                      style: CustomTextStyles
                                          .labelLargePrimary_1
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))
                                ]),
                                textAlign: TextAlign.left)),
                        CustomImageView(
                            imagePath: ImageConstant.imgFlagFill1Wght,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 8.h))
                      ]))),
          SizedBox(height: 37.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomElevatedButton(
                width: 162.h,
                text: "إلغاء",
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleSmallErrorContainer),
            Container(
              child: !isLoaded
                  ? CustomElevatedButton(
                      width: 150.h,
                      text: "تسجيل دخول",
                      onPressed: () async {
                        if(emailController.value.text=="" || passwordController.value.text=="" ){
                          ScaffoldMessenger.of(context)
                              .showSnackBar(CustomsnackBar(
                              'يرجي إدخال الخانات المطلوبة',
                              'موافق',
                              Colors.red));
                        setState(() {
                        isLoaded = false;
                        });
                        }else{
                          setState(() {
                            isLoaded = true;
                          });
                          await authController
                              .login(
                              emailController.text, passwordController.text)
                              .then((value) async => {

                            if (authController.status == 0)
                              {
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
                                setState(() {
                                  isLoaded = false;
                                })
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
          ])
        ]));
  }

  /// Navigates to the registerLogInForgetAPasswordOneScreen when the action is triggered.
  onTapTxtWidget(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerLogInForgetAPasswordOneScreen);
  }

  /// Navigates to the ordersScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainPageOneScreen()));
  }
  Widget _buildTextInputAndLabel3(BuildContext context) {
    return
      Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 17),
              child: Text(
                "ادخل الرمز السري",
                style: TextStyle(
                  fontSize: 12,

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
                    isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
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
                        fontSize: 12,
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
}

CustomsnackBar(msg, label, Color) => SnackBar(
      backgroundColor: Color,
      content: Text(msg),
      action: SnackBarAction(
        label: label,
        textColor: Colors.white,
        disabledTextColor: Colors.white,
        onPressed: () {},
      ),
    );
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
          ),)

    )
  ]);
}
