import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
int selectedIndex = 0;
class CustomBottomBarState extends State<CustomBottomBar> {


  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgVector20x20,
      activeIcon: ImageConstant.imgVector20x20,
      type: BottomBarEnum.Vector20x20,

    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorErrorcontainer18x20,
      activeIcon: ImageConstant.imgVectorErrorcontainer18x20,
      type: BottomBarEnum.Vectorerrorcontainer18x20,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorErrorcontainer19x19,
      activeIcon: ImageConstant.imgVectorErrorcontainer19x19,
      type: BottomBarEnum.Vectorerrorcontainer19x19,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHomeFill0Wght,
      activeIcon: ImageConstant.imgHomeFill0Wght,
      type: BottomBarEnum.mainPageOneScreen,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.errorContainer.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              0,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 18.v,
              width: 20.h,
              color: theme.colorScheme.errorContainer.withOpacity(1),
            ),
            activeIcon: SizedBox(
              height: 40.adaptSize,
              width: 40.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.gray200,
                        borderRadius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    color: theme.colorScheme.errorContainer.withOpacity(1),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10.h),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {

          selectedIndex = index;
          print("typee ${bottomMenuList[index].type}");
          print("selectedIndex $selectedIndex");
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Vector20x20,
  Vectorerrorcontainer18x20,
  Vectorerrorcontainer19x19,
  mainPageOneScreen,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,

  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
