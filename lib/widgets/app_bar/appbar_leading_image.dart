import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_screen/shopping_bag_screen.dart';

// ignore: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({
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
      onTap: () {
        if(imagePath==ImageConstant.imgShoppingBagFiErrorcontainer){
          Navigator.push(context, MaterialPageRoute(builder: (context) =>ShoppingBagScreen()));
        }else{
          Navigator.push(context, MaterialPageRoute(builder: (context) =>MainPageOneScreen()));
        }

      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 20.v,
          width: 28.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
