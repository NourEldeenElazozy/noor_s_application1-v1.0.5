import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:noor_s_application1/controllers/AuthController.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_one_page/register_create_an_account_one_page.dart';
import 'package:noor_s_application1/presentation/register_log_in_one_page/register_log_in_one_page.dart';
import 'package:noor_s_application1/utils.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:noor_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:noor_s_application1/widgets/custom_drop_down.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';
import 'package:noor_s_application1/widgets/custom_icon_button.dart';
import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
// ignore_for_file: must_be_immutable
class SettingsPageEditProfileScreen extends StatefulWidget {
  const SettingsPageEditProfileScreen({Key? key}) : super(key: key);

  @override
  _SettingsPageEditProfileScreenState createState() => _SettingsPageEditProfileScreenState();
}
class _SettingsPageEditProfileScreenState extends State<SettingsPageEditProfileScreen> {

  bool isLoaded = false;
  List<String> dropdownItemList = [];
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController shoppingbagFILLwghtGRADopszController =
      TextEditingController();
  final AuthController authController = Get.put(AuthController());
  TextEditingController shoppingbagFILLwghtGRADopszController1 =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    dropdownItemList.addAll(authController.cities.map((city) => city.name));
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 50.v),
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 109.v,
                                  width: 106.h,
                                  margin: EdgeInsets.only(right: 123.h),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse3,
                                            height: 106.adaptSize,
                                            width: 106.adaptSize,
                                            radius: BorderRadius.circular(53.h),
                                            alignment: Alignment.center),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 14.h),
                                            child: CustomIconButton(
                                                height: 26.adaptSize,
                                                width: 26.adaptSize,
                                                padding: EdgeInsets.all(5.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .fillBlueGray,
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPhotoCameraFi)))
                                      ]))),
                          SizedBox(height: 78.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11.h),
                              child:   _buildTextInputAndLabel(context, usernameController, empName.toString(), "اسم المستخدم"),),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11.h),
                              child:_buildTextInputAndLabel(context, emailController, email.toString(), "البريد الإلكتروني"),),
                          SizedBox(height: 27.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.h),
                              child:_buildTextInputAndLabel(context, phoneController, mobile.toString(), "رقم الهاتف"),),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: EdgeInsets.only(right: 28.h),
                                  child: Text("المدينة",
                                      style: CustomTextStyles
                                          .titleSmallErrorContainerBold_1))),
                          SizedBox(height: 13.v),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, right: 12.h),
                              child: CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          21.h, 11.v, 14.h, 10.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  hintText: address,
                                  items: dropdownItemList,
                                  onChanged: (value) {})),
                          SizedBox(height: 65.v),
                          _buildTf2(context),
                          SizedBox(height: 281.v),

                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "تعديل الملف الشخصي",
              margin: EdgeInsets.only(left: 16.h, top: 16.v, right: 14.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgAccountCircleErrorcontainer,
              margin: EdgeInsets.fromLTRB(12.h, 16.v, 30.h, 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
        width: 162.h,
        text: "رجوع",
        buttonStyle: CustomButtonStyles.fillGrayTL8,
        buttonTextStyle: CustomTextStyles.titleSmallBlack90001,
        onPressed: () {
          onTaptf(context);
        });
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomElevatedButton(
        width: 163.h,
        text: "حفظ التعديل",
        onPressed: () {

        });
  }

  /// Section Widget
  Widget _buildTf2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildTf(context),     Container(
              child: !isLoaded
                  ? CustomElevatedButton(
                  width: 150.h,
                  text: "حفظ التعديل",
                  onPressed: () async {

                    setState(() {
                      isLoaded=true;
                    });

                    print("ss");
                      await authController
                          .updateUserData( usernameController.text, emailController.text,phoneController.text,Token.toString())

                          .then((value) async => {

                        if (authController.status == 0)
                          {
                            print("sssss3"),
                            ScaffoldMessenger.of(context)
                                .showSnackBar(CustomsnackBar(
                                'خطاء ',
                                'موافق',
                                Colors.red)),
                            setState(() {
                              isLoaded = false;
                            }),
                          },
                        if (authController.status == 1)
                          {

                            //Get.to(MainPageOneScreen()),
                            setState(() {
                              isLoaded = false;
                            }),
                    ScaffoldMessenger.of(context)
                        .showSnackBar(CustomsnackBar(
                    'تمت العملية بنجاح ',
                    'موافق',
                    Colors.green)),

                          }
                      });
                    }

                  )
                  : Center(
                child: LoadingAnimationWidget.discreteCircle(
                  thirdRingColor: Colors.orange.shade100,
                  secondRingColor: Colors.orange.shade500,
                  color: Colors.orange,
                  size: 20,
                ),
              ),
            )]));
  }

  /// Section Widget


  /// Section Widget


  /// Section Widget


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

  /// Common widget
  Widget _buildTwentySix(
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the settingsPageContainerScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageContainerScreen);
  }

  /// Navigates to the settingsPageContainerScreen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageContainerScreen);
  }
}
