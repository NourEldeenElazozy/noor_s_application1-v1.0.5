import 'package:flutter/material.dart';import 'package:noor_s_application1/core/app_export.dart';import 'package:noor_s_application1/widgets/custom_search_view.dart';import 'package:noor_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class MainPageAfterSearchAfterWritingScreen extends StatelessWidget {MainPageAfterSearchAfterWritingScreen({Key? key}) : super(key: key);

TextEditingController searchController = TextEditingController();

TextEditingController shoppingbagFILLwghtGRADopszController = TextEditingController();

TextEditingController shoppingbagFILLwghtGRADopszController1 = TextEditingController();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 80.v), Expanded(child: SingleChildScrollView(child: Column(children: [_buildVector(context), SizedBox(height: 858.v), _buildShoppingbagFILLwghtGRADopsz(context), Container(height: 68.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.gray50))])))])))); } 
/// Section Widget
Widget _buildVector(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 23.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgVectorErrorcontainer, height: 18.v, width: 16.h, margin: EdgeInsets.only(top: 10.v, bottom: 157.v)), Expanded(child: Container(margin: EdgeInsets.only(left: 19.h), decoration: AppDecoration.outlineErrorContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomSearchView(controller: searchController, hintText: "حذاء"), SizedBox(height: 22.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtWidget(context);}, child: Padding(padding: EdgeInsets.only(right: 29.h), child: Text("حذاء رياضي نايك", style: CustomTextStyles.bodySmallGray800)))), SizedBox(height: 6.v), Divider(color: appTheme.blueGray10001, indent: 7.h, endIndent: 4.h), SizedBox(height: 11.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 29.h), child: Text("حذاء طبي نايك", style: CustomTextStyles.bodySmallGray800))), SizedBox(height: 5.v), Divider(color: appTheme.blueGray10001, indent: 7.h, endIndent: 4.h), SizedBox(height: 2.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 29.h), child: Text("حذاء أطفال طبي", style: CustomTextStyles.bodySmallGray800))), SizedBox(height: 5.v), Divider(color: appTheme.blueGray10001, indent: 7.h, endIndent: 4.h), SizedBox(height: 6.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 29.h), child: Text("حذاء رسمي", style: CustomTextStyles.bodySmallGray800))), SizedBox(height: 20.v)])))])); } 
/// Section Widget
Widget _buildShoppingbagFILLwghtGRADopsz(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 27.h, right: 24.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 15.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFavoriteFILLZero(context, image: ImageConstant.imgRectangle123), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 5.h), child: _buildWidget(context, widget: "بني")), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 5.h), child: _buildSixHundredFifty(context, sixHundredFifty: "65.0 د.ل", nike: "الماركة : Nike")), SizedBox(height: 11.v), CustomTextFormField(width: 153.h, controller: shoppingbagFILLwghtGRADopszController, hintText: "إضافة إلى السلة", prefix: Container(margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v), child: CustomImageView(imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242, height: 21.adaptSize, width: 21.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 26.v)), SizedBox(height: 7.v)]))), Expanded(child: Container(margin: EdgeInsets.only(left: 15.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildFavoriteFILLZero(context, image: ImageConstant.imgRectangle124), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(right: 5.h), child: _buildWidget(context, widget: "بني")), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 5.h), child: _buildSixHundredFifty(context, sixHundredFifty: "65.0 د.ل", nike: "الماركة : Nike")), SizedBox(height: 11.v), CustomTextFormField(width: 153.h, controller: shoppingbagFILLwghtGRADopszController1, hintText: "إضافة إلى السلة", textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(18.h, 2.v, 11.h, 3.v), child: CustomImageView(imagePath: ImageConstant.imgShoppingbagfill0wght400grad0opsz242, height: 21.adaptSize, width: 21.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 26.v)), SizedBox(height: 7.v)])))])); } 
/// Common widget
Widget _buildFavoriteFILLZero(BuildContext context, {required String image, }) { return SizedBox(height: 167.v, width: 173.h, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: image, height: 167.v, width: 173.h, radius: BorderRadius.circular(8.h), alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.only(top: 9.v, right: 9.h), shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder14), child: Container(height: 29.adaptSize, width: 29.adaptSize, padding: EdgeInsets.all(2.h), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder14), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgFavoriteFill0, height: 22.adaptSize, width: 22.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgFavoriteFill1, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)]))))])); } 
/// Common widget
Widget _buildWidget(BuildContext context, {required String widget, }) { return Row(mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 3.v), child: Text(widget, textAlign: TextAlign.right, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray80003))), CustomImageView(imagePath: ImageConstant.imgPaletteFill1W, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 6.h))]); } 
/// Common widget
Widget _buildSixHundredFifty(BuildContext context, {required String sixHundredFifty, required String nike, }) { return SizedBox(width: 159.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(sixHundredFifty, textAlign: TextAlign.right, style: theme.textTheme.titleSmall!.copyWith(color: theme.colorScheme.primary)), Padding(padding: EdgeInsets.only(top: 3.v), child: Text(nike, textAlign: TextAlign.right, style: CustomTextStyles.bodySmallErrorContainer_1.copyWith(color: theme.colorScheme.errorContainer.withOpacity(1))))])); } 
/// Navigates to the mainPageAfterSearchForAProductScreen when the action is triggered.
onTapTxtWidget(BuildContext context) { Navigator.pushNamed(context, AppRoutes.mainPageAfterSearchForAProductScreen); } 
 }