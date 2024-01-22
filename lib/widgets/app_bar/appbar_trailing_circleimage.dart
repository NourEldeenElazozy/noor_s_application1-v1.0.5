import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/profile_screen/profile_screen.dart';

// ignore: must_be_immutable
class AppbarTrailingCircleimage extends StatelessWidget {
  AppbarTrailingCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder14,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>ProfileScreen()));
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 28.adaptSize,
          width: 28.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            14.h,
          ),
        ),
      ),
    );
  }
}
