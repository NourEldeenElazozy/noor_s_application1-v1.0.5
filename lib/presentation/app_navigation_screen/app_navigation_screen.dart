import 'package:flutter/material.dart';
import 'package:noor_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1- splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- choose a type of accounts",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerChooseATypeOfAccountsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- choose a type of accounts-active One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerChooseATypeOfAccountsActiveOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#2- register- log in - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerLogInTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#2- register- log in-forget a password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerLogInForgetAPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- politicats and terms to register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerPoliticatsAndTermsToRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- create an account- after accept the terms",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerCreateAnAccountAfterAcceptTheTermsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3-main page- display a product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainPageDisplayAProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3-main page- display a product (active)",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.mainPageDisplayAProductActiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3-main page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3 -main page- after search",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainPageAfterSearchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3 -main page- after search-after writing",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.mainPageAfterSearchAfterWritingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3 -main page after search for a product",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.mainPageAfterSearchForAProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3-main page-filter",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainPageFilterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page- change password",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPageChangePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page-edit profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageEditProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page-send a report",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageSendAReportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page-send a report-active",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPageSendAReportActiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#5- settings-page- Technical support-make a call",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .settingsPageTechnicalSupportMakeACallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#5- settings-page- Technical support-end call",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .settingsPageTechnicalSupportEndCallScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingBagScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag payment type One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagPaymentTypeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag- peyment type",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingBagPeymentTypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#6- shopping bag- serious payment-One One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagSeriousPaymentOneOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#6- shopping bagserious payment-Two One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagseriousPaymentTwoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#6- shopping bagserious payment-Two Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagseriousPaymentTwoTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bagserious payment-Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagseriousPaymentTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bagserious payment-Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagseriousPaymentThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bagserious payment-Four",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagseriousPaymentFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag- bill One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingBagBillOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag-payment type",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingBagPaymentTypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag- serious payment-One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagSeriousPaymentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag-serious paymeny-Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.shoppingBagSeriousPaymenyTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6- shopping bag- bill",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.shoppingBagBillScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7- profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7- profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8-notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8-notifications- copun",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsCopunScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1- splash screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.splashScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- choose a type of accounts One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerChooseATypeOfAccountsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- choose a type of accounts-active",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerChooseATypeOfAccountsActiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- log in-forget a password One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.registerLogInForgetAPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- politicats and terms to register One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerPoliticatsAndTermsToRegisterOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#2- register- create an account- after accept the terms One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .registerCreateAnAccountAfterAcceptTheTermsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3- orders",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.ordersScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3- orders- order details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ordersOrderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3- orders- order details-choose time Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .ordersOrderDetailsChooseTimeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3- orders- order details-choose time Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.ordersOrderDetailsChooseTimeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3- orders- order details-choose time One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.ordersOrderDetailsChooseTimeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3- orders- order details-choose time",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.ordersOrderDetailsChooseTimeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4- orders",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.orders1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page- change password One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPageChangePasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5- settings-page-edit profile One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPageEditProfileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6-profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profile1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7-notifications One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7-notifications",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notifications1Screen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
