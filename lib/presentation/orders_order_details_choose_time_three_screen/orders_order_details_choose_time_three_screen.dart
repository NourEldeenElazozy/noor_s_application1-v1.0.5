import 'package:flutter/material.dart';import 'package:noor_s_application1/core/app_export.dart';import 'package:noor_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:noor_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:noor_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:noor_s_application1/widgets/custom_elevated_button.dart';class OrdersOrderDetailsChooseTimeThreeScreen extends StatelessWidget {const OrdersOrderDetailsChooseTimeThreeScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.all(20.h), child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [_buildDescription(context), SizedBox(height: 91.v), _buildTf(context), SizedBox(height: 91.v), _buildTf1(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildTf4(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 43.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 15.h, top: 14.v, bottom: 14.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarSubtitle(text: "توصيل الطلبية", margin: EdgeInsets.fromLTRB(29.h, 20.v, 29.h, 18.v))]); } 
/// Section Widget
Widget _buildDescription(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 31.v), decoration: AppDecoration.outlineErrorContainer7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 26.v), SizedBox(width: 330.h, child: Text("يجب اختيار الوقت الأدنى والوقت الأقصى لتوصيل طلبية\nالعميل.", maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.right, style: theme.textTheme.bodyMedium!.copyWith(height: 1.20)))])); } 
/// Section Widget
Widget _buildTf(BuildContext context) { return CustomElevatedButton(height: 150.v, width: 150.h, text: "الوقت\nالأدنى", margin: EdgeInsets.only(right: 104.h), buttonStyle: CustomButtonStyles.outlineErrorContainer, buttonTextStyle: CustomTextStyles.titleLargePrimary, onPressed: () {onTaptf(context);}); } 
/// Section Widget
Widget _buildTf1(BuildContext context) { return CustomElevatedButton(height: 150.v, width: 150.h, text: "الوقت\nالأقصى", margin: EdgeInsets.only(right: 104.h), buttonStyle: CustomButtonStyles.outlineErrorContainer, buttonTextStyle: CustomTextStyles.titleLargePrimary, onPressed: () {onTaptf1(context);}); } 
/// Section Widget
Widget _buildTf2(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "رجوع", margin: EdgeInsets.only(right: 18.h), buttonStyle: CustomButtonStyles.fillBlueGrayTL81, buttonTextStyle: CustomTextStyles.titleSmallBlack90003)); } 
/// Section Widget
Widget _buildTf3(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "ارسال", margin: EdgeInsets.only(left: 18.h))); } 
/// Section Widget
Widget _buildTf4(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 31.h, right: 31.h, bottom: 37.v), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildTf2(context), _buildTf3(context)])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the ordersOrderDetailsChooseTimeTwoScreen when the action is triggered.
onTaptf(BuildContext context) { Navigator.pushNamed(context, AppRoutes.ordersOrderDetailsChooseTimeTwoScreen); } 
/// Navigates to the ordersOrderDetailsChooseTimeOneScreen when the action is triggered.
onTaptf1(BuildContext context) { Navigator.pushNamed(context, AppRoutes.ordersOrderDetailsChooseTimeOneScreen); } 
 }
