import 'package:flutter/material.dart';
import 'package:noor_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:noor_s_application1/presentation/register_choose_a_type_of_accounts_screen/register_choose_a_type_of_accounts_screen.dart';
import 'package:noor_s_application1/presentation/register_choose_a_type_of_accounts_active_one_screen/register_choose_a_type_of_accounts_active_one_screen.dart';
import 'package:noor_s_application1/presentation/register_log_in_tab_container_screen/register_log_in_tab_container_screen.dart';
import 'package:noor_s_application1/presentation/register_log_in_forget_a_password_screen/register_log_in_forget_a_password_screen.dart';
import 'package:noor_s_application1/presentation/register_politicats_and_terms_to_register_screen/register_politicats_and_terms_to_register_screen.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_after_accept_the_terms_screen/register_create_an_account_after_accept_the_terms_screen.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_screen/main_page_display_a_product_screen.dart';
import 'package:noor_s_application1/presentation/main_page_display_a_product_active_screen/main_page_display_a_product_active_screen.dart';
import 'package:noor_s_application1/presentation/main_page_one_screen/main_page_one_screen.dart';
import 'package:noor_s_application1/presentation/main_page_after_search_screen/main_page_after_search_screen.dart';
import 'package:noor_s_application1/presentation/main_page_after_search_after_writing_screen/main_page_after_search_after_writing_screen.dart';
import 'package:noor_s_application1/presentation/main_page_after_search_for_a_product_screen/main_page_after_search_for_a_product_screen.dart';
import 'package:noor_s_application1/presentation/main_page_filter_screen/main_page_filter_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_container_screen/settings_page_container_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_change_password_screen/settings_page_change_password_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_edit_profile_screen/settings_page_edit_profile_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_send_a_report_screen/settings_page_send_a_report_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_send_a_report_active_screen/settings_page_send_a_report_active_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_technical_support_make_a_call_screen/settings_page_technical_support_make_a_call_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_technical_support_end_call_screen/settings_page_technical_support_end_call_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_screen/shopping_bag_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_payment_type_one_screen/shopping_bag_payment_type_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_peyment_type_screen/shopping_bag_peyment_type_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_serious_payment_one_one_screen/shopping_bag_serious_payment_one_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bagserious_payment_two_one_screen/shopping_bagserious_payment_two_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bagserious_payment_two_two_screen/shopping_bagserious_payment_two_two_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bagserious_payment_two_screen/shopping_bagserious_payment_two_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bagserious_payment_three_screen/shopping_bagserious_payment_three_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bagserious_payment_four_screen/shopping_bagserious_payment_four_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_bill_one_screen/shopping_bag_bill_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_payment_type_screen/shopping_bag_payment_type_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_serious_payment_one_screen/shopping_bag_serious_payment_one_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_serious_paymeny_two_screen/shopping_bag_serious_paymeny_two_screen.dart';
import 'package:noor_s_application1/presentation/shopping_bag_bill_screen/shopping_bag_bill_screen.dart';
import 'package:noor_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:noor_s_application1/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:noor_s_application1/presentation/notifications_screen/notifications_screen.dart';
import 'package:noor_s_application1/presentation/notifications_copun_screen/notifications_copun_screen.dart';
import 'package:noor_s_application1/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import 'package:noor_s_application1/presentation/register_choose_a_type_of_accounts_one_screen/register_choose_a_type_of_accounts_one_screen.dart';
import 'package:noor_s_application1/presentation/register_choose_a_type_of_accounts_active_screen/register_choose_a_type_of_accounts_active_screen.dart';
import 'package:noor_s_application1/presentation/register_log_in_forget_a_password_one_screen/register_log_in_forget_a_password_one_screen.dart';
import 'package:noor_s_application1/presentation/register_politicats_and_terms_to_register_one_screen/register_politicats_and_terms_to_register_one_screen.dart';
import 'package:noor_s_application1/presentation/register_create_an_account_after_accept_the_terms_one_screen/register_create_an_account_after_accept_the_terms_one_screen.dart';
import 'package:noor_s_application1/presentation/orders_screen/orders_screen.dart';
import 'package:noor_s_application1/presentation/orders_order_details_screen/orders_order_details_screen.dart';
import 'package:noor_s_application1/presentation/orders_order_details_choose_time_three_screen/orders_order_details_choose_time_three_screen.dart';
import 'package:noor_s_application1/presentation/orders_order_details_choose_time_two_screen/orders_order_details_choose_time_two_screen.dart';
import 'package:noor_s_application1/presentation/orders_order_details_choose_time_one_screen/orders_order_details_choose_time_one_screen.dart';
import 'package:noor_s_application1/presentation/orders_order_details_choose_time_screen/orders_order_details_choose_time_screen.dart';
import 'package:noor_s_application1/presentation/orders1_screen/orders1_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_one_screen/settings_page_one_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_change_password_one_screen/settings_page_change_password_one_screen.dart';
import 'package:noor_s_application1/presentation/settings_page_edit_profile_one_screen/settings_page_edit_profile_one_screen.dart';
import 'package:noor_s_application1/presentation/profile1_screen/profile1_screen.dart';
import 'package:noor_s_application1/presentation/notifications_one_screen/notifications_one_screen.dart';
import 'package:noor_s_application1/presentation/notifications1_screen/notifications1_screen.dart';
import 'package:noor_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String registerChooseATypeOfAccountsScreen =
      '/register_choose_a_type_of_accounts_screen';

  static const String registerChooseATypeOfAccountsActiveOneScreen =
      '/register_choose_a_type_of_accounts_active_one_screen';

  static const String registerCreateAnAccountPage =
      '/register_create_an_account_page';

  static const String registerLogInPage = '/register_log_in_page';

  static const String registerLogInTabContainerScreen =
      '/register_log_in_tab_container_screen';

  static const String registerLogInForgetAPasswordScreen =
      '/register_log_in_forget_a_password_screen';

  static const String registerPoliticatsAndTermsToRegisterScreen =
      '/register_politicats_and_terms_to_register_screen';

  static const String registerCreateAnAccountAfterAcceptTheTermsScreen =
      '/register_create_an_account_after_accept_the_terms_screen';

  static const String mainPage = '/main_page';

  static const String mainPageDisplayAProductScreen =
      '/main_page_display_a_product_screen';

  static const String mainPageDisplayAProductActiveScreen =
      '/main_page_display_a_product_active_screen';

  static const String mainPageOneScreen = '/main_page_one_screen';

  static const String mainPageAfterSearchScreen =
      '/main_page_after_search_screen';

  static const String mainPageAfterSearchAfterWritingScreen =
      '/main_page_after_search_after_writing_screen';

  static const String mainPageAfterSearchForAProductScreen =
      '/main_page_after_search_for_a_product_screen';

  static const String mainPageFilterScreen = '/main_page_filter_screen';

  static const String sectionsPage = '/sections_page';

  static const String sectionsOnePage = '/sections_one_page';

  static const String settingsPage = '/settings_page';

  static const String settingsPageContainerScreen =
      '/settings_page_container_screen';

  static const String settingsPageChangePasswordScreen =
      '/settings_page_change_password_screen';

  static const String settingsPageEditProfileScreen =
      '/settings_page_edit_profile_screen';

  static const String settingsPageSendAReportScreen =
      '/settings_page_send_a_report_screen';

  static const String settingsPageSendAReportActiveScreen =
      '/settings_page_send_a_report_active_screen';

  static const String settingsPageTechnicalSupportMakeACallScreen =
      '/settings_page_technical_support_make_a_call_screen';

  static const String settingsPageTechnicalSupportEndCallScreen =
      '/settings_page_technical_support_end_call_screen';

  static const String shoppingBagScreen = '/shopping_bag_screen';

  static const String shoppingBagPaymentTypeOneScreen =
      '/shopping_bag_payment_type_one_screen';

  static const String shoppingBagPeymentTypeScreen =
      '/shopping_bag_peyment_type_screen';

  static const String shoppingBagSeriousPaymentOneOneScreen =
      '/shopping_bag_serious_payment_one_one_screen';

  static const String shoppingBagseriousPaymentTwoOneScreen =
      '/shopping_bagserious_payment_two_one_screen';

  static const String shoppingBagseriousPaymentTwoTwoScreen =
      '/shopping_bagserious_payment_two_two_screen';

  static const String shoppingBagseriousPaymentTwoScreen =
      '/shopping_bagserious_payment_two_screen';

  static const String shoppingBagseriousPaymentThreeScreen =
      '/shopping_bagserious_payment_three_screen';

  static const String shoppingBagseriousPaymentFourScreen =
      '/shopping_bagserious_payment_four_screen';

  static const String shoppingBagBillOneScreen =
      '/shopping_bag_bill_one_screen';

  static const String shoppingBagPaymentTypeScreen =
      '/shopping_bag_payment_type_screen';

  static const String shoppingBagSeriousPaymentOneScreen =
      '/shopping_bag_serious_payment_one_screen';

  static const String shoppingBagSeriousPaymenyTwoScreen =
      '/shopping_bag_serious_paymeny_two_screen';

  static const String shoppingBagBillScreen = '/shopping_bag_bill_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String notificationsCopunScreen = '/notifications_copun_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String registerChooseATypeOfAccountsOneScreen =
      '/register_choose_a_type_of_accounts_one_screen';

  static const String registerChooseATypeOfAccountsActiveScreen =
      '/register_choose_a_type_of_accounts_active_screen';

  static const String registerCreateAnAccountOnePage =
      '/register_create_an_account_one_page';

  static const String registerLogInOnePage = '/register_log_in_one_page';

  static const String registerLogInForgetAPasswordOneScreen =
      '/register_log_in_forget_a_password_one_screen';

  static const String registerPoliticatsAndTermsToRegisterOneScreen =
      '/register_politicats_and_terms_to_register_one_screen';

  static const String registerCreateAnAccountAfterAcceptTheTermsOneScreen =
      '/register_create_an_account_after_accept_the_terms_one_screen';

  static const String ordersScreen = '/orders_screen';

  static const String ordersOrderDetailsScreen = '/orders_order_details_screen';

  static const String ordersOrderDetailsChooseTimeThreeScreen =
      '/orders_order_details_choose_time_three_screen';

  static const String ordersOrderDetailsChooseTimeTwoScreen =
      '/orders_order_details_choose_time_two_screen';

  static const String ordersOrderDetailsChooseTimeOneScreen =
      '/orders_order_details_choose_time_one_screen';

  static const String ordersOrderDetailsChooseTimeScreen =
      '/orders_order_details_choose_time_screen';

  static const String orders1Screen = '/orders1_screen';

  static const String settingsPageOneScreen = '/settings_page_one_screen';

  static const String settingsPageChangePasswordOneScreen =
      '/settings_page_change_password_one_screen';

  static const String settingsPageEditProfileOneScreen =
      '/settings_page_edit_profile_one_screen';

  static const String profile1Screen = '/profile1_screen';

  static const String notificationsOneScreen = '/notifications_one_screen';

  static const String notifications1Screen = '/notifications1_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    registerChooseATypeOfAccountsScreen: (context) =>
        RegisterChooseATypeOfAccountsScreen(),
    registerChooseATypeOfAccountsActiveOneScreen: (context) =>
        RegisterChooseATypeOfAccountsActiveOneScreen(),
    registerLogInTabContainerScreen: (context) =>
        RegisterLogInTabContainerScreen(),
    registerLogInForgetAPasswordScreen: (context) =>
        RegisterLogInForgetAPasswordScreen(),
    registerPoliticatsAndTermsToRegisterScreen: (context) =>
        RegisterPoliticatsAndTermsToRegisterScreen(),
    registerCreateAnAccountAfterAcceptTheTermsScreen: (context) =>
        RegisterCreateAnAccountAfterAcceptTheTermsScreen(),
    mainPageDisplayAProductScreen: (context) => MainPageDisplayAProductScreen(),
    mainPageDisplayAProductActiveScreen: (context) =>
        MainPageDisplayAProductActiveScreen(),
    mainPageOneScreen: (context) => MainPageOneScreen(),
    mainPageAfterSearchScreen: (context) => MainPageAfterSearchScreen(),
    mainPageAfterSearchAfterWritingScreen: (context) =>
        MainPageAfterSearchAfterWritingScreen(),
    mainPageAfterSearchForAProductScreen: (context) =>
        MainPageAfterSearchForAProductScreen(),
    mainPageFilterScreen: (context) => MainPageFilterScreen(),
    settingsPageContainerScreen: (context) => SettingsPageContainerScreen(),
    settingsPageChangePasswordScreen: (context) =>
        SettingsPageChangePasswordScreen(),
    settingsPageEditProfileScreen: (context) => SettingsPageEditProfileScreen(),
    settingsPageSendAReportScreen: (context) => SettingsPageSendAReportScreen(),
    settingsPageSendAReportActiveScreen: (context) =>
        SettingsPageSendAReportActiveScreen(),
    settingsPageTechnicalSupportMakeACallScreen: (context) =>
        SettingsPageTechnicalSupportMakeACallScreen(),
    settingsPageTechnicalSupportEndCallScreen: (context) =>
        SettingsPageTechnicalSupportEndCallScreen(),
    shoppingBagScreen: (context) => ShoppingBagScreen(),
    shoppingBagPaymentTypeOneScreen: (context) =>
        ShoppingBagPaymentTypeOneScreen(),
    shoppingBagPeymentTypeScreen: (context) => ShoppingBagPeymentTypeScreen(),
    shoppingBagSeriousPaymentOneOneScreen: (context) =>
        ShoppingBagSeriousPaymentOneOneScreen(),
    shoppingBagseriousPaymentTwoOneScreen: (context) =>
        ShoppingBagseriousPaymentTwoOneScreen(),
    shoppingBagseriousPaymentTwoTwoScreen: (context) =>
        ShoppingBagseriousPaymentTwoTwoScreen(),
    shoppingBagseriousPaymentTwoScreen: (context) =>
        ShoppingBagseriousPaymentTwoScreen(),
    shoppingBagseriousPaymentThreeScreen: (context) =>
        ShoppingBagseriousPaymentThreeScreen(),
    shoppingBagseriousPaymentFourScreen: (context) =>
        ShoppingBagseriousPaymentFourScreen(),
    shoppingBagBillOneScreen: (context) => ShoppingBagBillOneScreen(),
    shoppingBagPaymentTypeScreen: (context) => ShoppingBagPaymentTypeScreen(),
    shoppingBagSeriousPaymentOneScreen: (context) =>
        ShoppingBagSeriousPaymentOneScreen(),
    shoppingBagSeriousPaymenyTwoScreen: (context) =>
        ShoppingBagSeriousPaymenyTwoScreen(),
    shoppingBagBillScreen: (context) => ShoppingBagBillScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    notificationsCopunScreen: (context) => NotificationsCopunScreen(),
    splashScreenOneScreen: (context) => SplashScreenOneScreen(),
    registerChooseATypeOfAccountsOneScreen: (context) =>
        RegisterChooseATypeOfAccountsOneScreen(),
    registerChooseATypeOfAccountsActiveScreen: (context) =>
        RegisterChooseATypeOfAccountsActiveScreen(),
    registerLogInForgetAPasswordOneScreen: (context) =>
        RegisterLogInForgetAPasswordOneScreen(),
    registerPoliticatsAndTermsToRegisterOneScreen: (context) =>
        RegisterPoliticatsAndTermsToRegisterOneScreen(),
    registerCreateAnAccountAfterAcceptTheTermsOneScreen: (context) =>
        RegisterCreateAnAccountAfterAcceptTheTermsOneScreen(),
    ordersScreen: (context) => OrdersScreen(),
    ordersOrderDetailsScreen: (context) => OrdersOrderDetailsScreen(),
    ordersOrderDetailsChooseTimeThreeScreen: (context) =>
        OrdersOrderDetailsChooseTimeThreeScreen(),
    ordersOrderDetailsChooseTimeTwoScreen: (context) =>
        OrdersOrderDetailsChooseTimeTwoScreen(),
    ordersOrderDetailsChooseTimeOneScreen: (context) =>
        OrdersOrderDetailsChooseTimeOneScreen(),
    ordersOrderDetailsChooseTimeScreen: (context) =>
        OrdersOrderDetailsChooseTimeScreen(),
    orders1Screen: (context) => Orders1Screen(),
    settingsPageOneScreen: (context) => SettingsPageOneScreen(),
    settingsPageChangePasswordOneScreen: (context) =>
        SettingsPageChangePasswordOneScreen(),
    settingsPageEditProfileOneScreen: (context) =>
        SettingsPageEditProfileOneScreen(),
    profile1Screen: (context) => Profile1Screen(),
    notificationsOneScreen: (context) => NotificationsOneScreen(),
    notifications1Screen: (context) => Notifications1Screen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
