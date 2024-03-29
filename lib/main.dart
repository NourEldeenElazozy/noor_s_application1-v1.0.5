import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:noor_s_application1/theme/theme_helper.dart';
import 'package:noor_s_application1/routes/app_routes.dart';
import 'package:get/get.dart';
var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  //ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme,
      title: 'noor_s_application1',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.registerChooseATypeOfAccountsOneScreen,
      routes: AppRoutes.routes,
    );
  }
}
