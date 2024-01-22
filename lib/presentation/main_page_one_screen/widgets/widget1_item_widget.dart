import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Widget1ItemWidget extends StatelessWidget {
  const Widget1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle6,
      height: 158.v,
      width: 376.h,
      radius: BorderRadius.circular(
        8.h,
      ),
    );
  }
}
