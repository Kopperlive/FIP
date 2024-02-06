import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                          screenTitle: "log in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "root menu - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.rootMenuContainer1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Congratulations window".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.congratulationsWindowScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "How to use omnicomm".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.howToUseOmnicommScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notifications/chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notifications/chat One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsChatOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notifications/chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsChat1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "change password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.changePasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Privacy policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "оверлей".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k15Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "оверлей фор акк".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.k16Screen),
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
                "App Navigation".tr,
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
                "Check your app's UI from the below demo screens of your app."
                    .tr,
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
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
