import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/widgets/custom_elevated_button.dart';

class MainPageDisplayAProductHowManyPicsesDialog extends StatefulWidget {
  const MainPageDisplayAProductHowManyPicsesDialog({Key? key})
      : super(key: key);
  @override
  MainPageDisplayAProductHowManyPicsesDialogState createState() => MainPageDisplayAProductHowManyPicsesDialogState();

}
class MainPageDisplayAProductHowManyPicsesDialogState extends State<MainPageDisplayAProductHowManyPicsesDialog>{

 int quant =1;

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
       child: Container(
           margin: EdgeInsets.only(left: 42.h, right: 42.h, bottom: 182.v),
           padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.v),
           decoration: AppDecoration.fillWhiteA
               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
           child: Column(
               mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                SizedBox(height: 9.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Padding(
                                 padding: EdgeInsets.only(top: 1.v),
                                 child: Text("عدد القطع",
                                     style: CustomTextStyles
                                         .titleSmallBlack900)),
                             CustomImageView(
                                 imagePath: ImageConstant.imgCancel1,
                                 height: 16.adaptSize,
                                 width: 16.adaptSize,
                                 margin: EdgeInsets.only(left: 16.h),
                                 onTap: () {
                                  onTapImgCancelOne(context);
                                 })
                            ]))),
                SizedBox(height: 22.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 25.h),
                        child: Text("حذاء رياضي طبي",
                            style: CustomTextStyles.titleLargePrimary))),
                SizedBox(height: 14.v),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle63,
                    height: 139.v,
                    width: 254.h,
                    radius: BorderRadius.circular(8.h)),
                SizedBox(height: 18.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 25.h),
                        child: Text("حدد عدد القطع التي تريد شرائها",
                            style: CustomTextStyles.bodyMediumBlack90014))),
                SizedBox(height: 28.v),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         InkWell(
                          onTap: () {
setState(() {
  quant--;
});
                          },
                          child: Container(
                              height: 82.v,
                              width: 57.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22.h, vertical: 32.v),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder5),
                              child: CustomImageView(
                                  imagePath:
                                  ImageConstant.imgVectorWhiteA70017x12,
                                  height: 17.v,
                                  width: 12.h,
                                  alignment: Alignment.bottomRight)),
                         ),

                         Padding(
                             padding:
                             EdgeInsets.only(top: 17.v, bottom: 19.v),
                             child: Text(quant.toString(),
                                 style: CustomTextStyles
                                     .displayMediumErrorContainer)),
                         InkWell(
                           onTap: () {
                             setState(() {
                               quant++;
                             });
                           },
                           child: Container(
                               height: 82.v,
                               width: 57.h,
                               padding: EdgeInsets.symmetric(
                                   horizontal: 22.h, vertical: 32.v),
                               decoration: AppDecoration.fillPrimary.copyWith(
                                   borderRadius:
                                   BorderRadiusStyle.roundedBorder5),
                               child: CustomImageView(
                                   imagePath:
                                   ImageConstant.imgVectorWhiteA70017x12,
                                   height: 17.v,
                                   width: 12.h,
                                   alignment: Alignment.bottomRight)),
                         ),
                        ])),
                SizedBox(height: 34.v),
                 Padding(
                     padding: EdgeInsets.symmetric(horizontal: 24.h),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                          Container(
                              width: 127.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28.h, vertical: 12.v),
                              decoration: AppDecoration.fillGray10001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder5),
                              child: RichText(
                                  text: TextSpan(children: [
                                   TextSpan(
                                       text: "التكلفة :    ",
                                       style: CustomTextStyles
                                           .bodyMediumBlack900),
                                   TextSpan(
                                       text: "65",
                                       style: CustomTextStyles
                                           .titleSmallBlack900_1)
                                  ]),
                                  textAlign: TextAlign.left)),
                          Container(
                              width: 127.h,
                              margin: EdgeInsets.only(left: 1.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 10.v),
                              decoration: AppDecoration.fillGray10001
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder5),
                              child: RichText(
                                  text: TextSpan(children: [
                                   TextSpan(
                                       text: "عدد القطع :     ",
                                       style: CustomTextStyles
                                           .bodyMediumBlack900),
                                   TextSpan(
                                       text: "1 ",
                                       style: CustomTextStyles
                                           .titleSmallBlack900_1)
                                  ]),
                                  textAlign: TextAlign.left))
                         ])),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                    text: "إضافة إلى السلة",
                    leftIcon: Container(
                        margin: EdgeInsets.only(right: 17.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVectorWhiteA700,
                            height: 17.v,
                            width: 11.h)),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                    buttonTextStyle: CustomTextStyles.titleMediumWhiteA70017,
                    onPressed: () {
                     onTaptf(context);
                    })
               ])));
    mediaQueryData = MediaQuery.of(context);

  }
}
  /// Navigates to the mainPageDisplayAProductActiveScreen when the action is triggered.
  onTapImgCancelOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageDisplayAProductActiveScreen);
  }

  /// Navigates to the mainPageOneScreen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainPageOneScreen);
  }



