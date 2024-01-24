import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_checkbox_button.dart';
import 'package:noor_s_application1/widgets/custom_drop_down.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

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
TextEditingController passwordController = TextEditingController();
// ignore_for_file: must_be_immutable
class RegisterCreateAnAccountOnePageState
    extends State<RegisterCreateAnAccountOnePage>
    with AutomaticKeepAliveClientMixin<RegisterCreateAnAccountOnePage> {
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool tf = false;

  @override
  bool get wantKeepAlive => true;

  @override
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
                      child:
                      SingleChildScrollView(
                            child: Column(
                             children: [
                        Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 37.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildTextInputAndLabel(context,nameController,"ادخل اسمك بالكامل","الأسم"),
                                        SizedBox(height: 31.v),
                                        _buildTextInputAndLabel(context,nameController,"ادخل الإيميل الإلكتروني","البريد الإلكتروني"),
                                        SizedBox(height: 29.v),
                                        _buildTextInputAndLabel3(context),
                                        SizedBox(height: 31.v),
                                        _buildTextInputAndLabel(context,nameController,"ادخل رقم الهاتف","رقم الهاتف"),
                                        SizedBox(height: 29.v),
                                        CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    21.h, 11.v, 14.h, 10.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize)),
                                            hintText: "بنغازي",
                                            items: dropdownItemList,
                                            onChanged: (value) {}),
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
                  Expanded(
                      child: CustomElevatedButton(
                          text: "إنشاء حساب",
                          margin: EdgeInsets.only(left: 15.h, bottom: 43.v)))
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
    ),)

      )
    ]);
  }

  /// Navigates to the registerChooseATypeOfAccountsOneScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.registerChooseATypeOfAccountsOneScreen);
  }
}
