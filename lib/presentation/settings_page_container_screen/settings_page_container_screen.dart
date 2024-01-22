import 'package:flutter/material.dart';import 'package:noor_s_application1/core/app_export.dart';import 'package:noor_s_application1/presentation/main_page/main_page.dart';import 'package:noor_s_application1/presentation/sections_one_page/sections_one_page.dart';import 'package:noor_s_application1/presentation/sections_page/sections_page.dart';import 'package:noor_s_application1/presentation/settings_page/settings_page.dart';import 'package:noor_s_application1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class SettingsPageContainerScreen extends StatelessWidget {SettingsPageContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.settingsPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Vector20x20: return AppRoutes.settingsPage; case BottomBarEnum.Vectorerrorcontainer18x20: return AppRoutes.sectionsOnePage; case BottomBarEnum.Vectorerrorcontainer19x19: return AppRoutes.sectionsPage; case BottomBarEnum.Homefill0wght: return AppRoutes.mainPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.settingsPage: return SettingsPage(); case AppRoutes.sectionsOnePage: return SectionsOnePage(); case AppRoutes.sectionsPage: return SectionsPage(); case AppRoutes.mainPage: return MainPage(); default: return DefaultWidget();} } 
 }
