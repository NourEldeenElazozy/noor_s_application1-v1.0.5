import 'package:flutter/material.dart';import 'package:noor_s_application1/core/app_export.dart';import 'package:noor_s_application1/widgets/custom_elevated_button.dart';import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ShoppingBagPaymentTypeScreen extends StatelessWidget {ShoppingBagPaymentTypeScreen({Key? key}) : super(key: key);

TextEditingController shoppingbagFILLwghtGRADopszController = TextEditingController();

TextEditingController shoppingbagFILLwghtGRADopszController1 = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: 468.h, child: SingleChildScrollView(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildFive(context), SizedBox(height: 50.v), _buildArrowLeft(context), SizedBox(height: 70.v), Padding(padding: EdgeInsets.only(left: 35.h, right: 69.h), child: _buildThree(context, creditCard: ImageConstant.imgCreditCard, widget: "وسيلة دفع\nإلكترونية")), SizedBox(height: 33.v), Padding(padding: EdgeInsets.only(left: 35.h, right: 69.h), child: _buildThree(context, creditCard: ImageConstant.imgCreditCard89x89, widget: "وسيلة الدفع\nالنقدي")), SizedBox(height: 216.v), CustomElevatedButton(text: "استمرار", margin: EdgeInsets.only(left: 32.h, right: 76.h), buttonTextStyle: CustomTextStyles.titleMediumWhiteA700ExtraBold, onPressed: () {onTaptf(context);}), SizedBox(height: 233.v), _buildShoppingbagFILLwghtGRADopsz(context), Container(height: 68.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.gray50))]))))); } 
/// Section Widget
Widget _buildFive(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v), decoration: AppDecoration.outlineErrorContainer3, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 10.v), Align(alignment: Alignment.centerRight, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [GestureDetector(onTap: () {onTapTxtWidget(context);}, child: Padding(padding: EdgeInsets.only(top: 10.v, bottom: 3.v), child: Text("محمد علي", style: CustomTextStyles.labelLargeErrorContainer_1))), CustomImageView(imagePath: ImageConstant.imgEllipse328x31, height: 28.v, width: 31.h, radius: BorderRadius.circular(15.h), margin: EdgeInsets.only(left: 19.h), onTap: () {onTapImgCircleImage(context);})])), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 43.h, right: 53.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 9.v), child: Text("السعر الكلي  :  65د.ل", style: CustomTextStyles.titleSmallGray80001)), Spacer(flex: 55), SizedBox(height: 41.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: theme.colorScheme.errorContainer.withOpacity(1))), Spacer(flex: 44), Padding(padding: EdgeInsets.only(top: 10.v, bottom: 14.v), child: Text("عدد المنتجات  :  1", style: CustomTextStyles.titleSmallGray80001))]))])); } 
/// Section Widget
Widget _buildArrowLeft(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 19.h, right: 67.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftErrorcontainer, height: 18.v, width: 20.h, margin: EdgeInsets.only(bottom: 1.v), onTap: () {onTapImgArrowLeft(context);}), Padding(padding: EdgeInsets.only(top: 2.v), child: Text("اختر وسيلة الدفع", style: CustomTextStyles.titleSmallErrorContainer15))])); } 
/// Section Widget
Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 27.h, right: 65.h), child: Row(children: [Container(decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildTen(context, image: ImageConstant.imgRectangle123), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 5.h), child: _buildWidget(context, widget: "بني")), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 5.h), child: _buildSixHundredFifty(context, sixHundredFifty: "65.0 د.ل", nike: "الماركة : Nike")), SizedBox(height: 11.v), CustomTextFormField(width: 153.h, controller: shoppingbagFILLwghtGRADopszController, hintText: "إضافة إلى السلة", prefix: Container(margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v), child: CustomImageView(imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242, height: 21.adaptSize, width: 21.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 26.v)), SizedBox(height: 7.v)])), Container(margin: EdgeInsets.only(left: 30.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildTen(context, image: ImageConstant.imgRectangle124), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 5.h), child: _buildWidget(context, widget: "بني")), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 5.h), child: _buildSixHundredFifty(context, sixHundredFifty: "65.0 د.ل", nike: "الماركة : Nike")), SizedBox(height: 11.v), CustomTextFormField(width: 153.h, controller: shoppingbagFILLwghtGRADopszController1, hintText: "إضافة إلى السلة", textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v), child: CustomImageView(imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242, height: 21.adaptSize, width: 21.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 26.v)), SizedBox(height: 7.v)]))])); } 
/// Common widget
Widget _buildThree(BuildContext context, {required String creditCard, required String widget, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 32.v), decoration: AppDecoration.outlineErrorContainer5.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: creditCard, height: 89.adaptSize, width: 89.adaptSize, margin: EdgeInsets.only(bottom: 9.v)), Container(width: 110.h, margin: EdgeInsets.fromLTRB(77.h, 22.v, 2.h, 21.v), child: Text(widget, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: CustomTextStyles.titleLargeErrorContainerBold.copyWith(color: theme.colorScheme.errorContainer.withOpacity(1), height: 1.10)))])); } 
/// Common widget
Widget _buildTen(BuildContext context, {required String image, }) { return SizedBox(height: 167.v, width: 173.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: image, height: 167.v, width: 173.h, radius: BorderRadius.circular(8.h), alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.only(top: 9.v, right: 9.h), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder14), child: Container(height: 29.adaptSize, width: 29.adaptSize, padding: EdgeInsets.all(2.h), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder14), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFavoriteFill0, height: 22.adaptSize, width: 22.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgFavoriteFill1, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)]))))])); } 
/// Common widget
Widget _buildWidget(BuildContext context, {required String widget, }) { return Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text(widget, textAlign: TextAlign.right, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray80003))), CustomImageView(imagePath: ImageConstant.imgPaletteFill1W, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 6.h))]); } 
/// Common widget
Widget _buildSixHundredFifty(BuildContext context, {required String sixHundredFifty, required String nike, }) { return SizedBox(width: 159.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(sixHundredFifty, textAlign: TextAlign.right, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primary)), Padding(padding: EdgeInsets.only(top: 3.v), child: Text(nike, textAlign: TextAlign.right, style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(color: theme.colorScheme.errorContainer.withOpacity(1))))])); } 
/// Navigates to the profileScreen when the action is triggered.
onTapTxtWidget(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
/// Navigates to the profileScreen when the action is triggered.
onTapImgCircleImage(BuildContext context) { Navigator.pushNamed(context, AppRoutes.profileScreen); } 
/// Navigates to the shoppingBagPaymentTypeOneScreen when the action is triggered.
onTapImgArrowLeft(BuildContext context) { Navigator.pushNamed(context, AppRoutes.shoppingBagPaymentTypeOneScreen); } 
/// Navigates to the shoppingBagSeriousPaymentOneScreen when the action is triggered.
onTaptf(BuildContext context) { Navigator.pushNamed(context, AppRoutes.shoppingBagSeriousPaymentOneScreen); } 
 }