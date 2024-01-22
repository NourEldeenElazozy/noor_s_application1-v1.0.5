import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class WidgetItemWidget extends StatelessWidget {
  const WidgetItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle6,
        height: 158.v,
        width: 376.h,
        radius: BorderRadius.circular(
          8.h,
        ),
      ),
    );
  }
}
