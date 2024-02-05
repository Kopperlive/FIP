import 'models/notifications_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_page/root_menu_page.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/appbar_title.dart';
import 'package:hojiakbar_s_app/widgets/app_bar/custom_app_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_floating_button.dart';
import 'provider/notifications_chat_provider.dart';

class NotificationsChatScreen extends StatefulWidget {
  const NotificationsChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsChatScreenState createState() => NotificationsChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsChatProvider(),
      child: NotificationsChatScreen(),
    );
  }
}

class NotificationsChatScreenState extends State<NotificationsChatScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: _buildNotificationsChat(context),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 61.h,
      leading: Container(
        height: 42.adaptSize,
        width: 42.adaptSize,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 49.v,
          bottom: 14.v,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse7,
              height: 42.adaptSize,
              width: 42.adaptSize,
              radius: BorderRadius.circular(
                21.h,
              ),
              alignment: Alignment.center,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse5,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(
                16.h,
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(4.h),
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_turdieva_dilnaza".tr,
        margin: EdgeInsets.only(
          top: 60.v,
          bottom: 20.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildNotificationsChat(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 280.v),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 16.v,
            ),
            decoration: AppDecoration.fillGray100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    "lbl_messages".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSearchBlack900,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 12.v,
                    bottom: 4.v,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 52.v,
                  width: 51.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse19,
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: appTheme.amber300,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray50,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_chief_accountant".tr,
                        style: CustomTextStyles.bodyLargeLime700,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "msg_please_confirm2".tr,
                        style: CustomTextStyles.bodySmallK2DGray80001,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 32.v,
                    ),
                    child: Text(
                      "lbl_18_31".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 52.v,
                  width: 51.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse1951x51,
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: appTheme.lightGreen500,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray50,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_chief".tr,
                        style: CustomTextStyles.bodyLargeLime700,
                      ),
                      SizedBox(height: 8.v),
                      Text(
                        "lbl_okay".tr,
                        style: CustomTextStyles.bodySmallK2DGray80001,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 32.v,
                    ),
                    child: Text(
                      "lbl_21_40".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 52.v,
                  width: 51.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse191,
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: appTheme.gray400,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray50,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 4.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_manager".tr,
                        style: CustomTextStyles.bodyLargeLime700,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "lbl_thanks".tr,
                        style: CustomTextStyles.bodySmallK2DGray80001,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 32.v,
                    ),
                    child: Text(
                      "lbl_13_01".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 52.v,
                  width: 51.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse192,
                        height: 51.adaptSize,
                        width: 51.adaptSize,
                        radius: BorderRadius.circular(
                          25.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          margin: EdgeInsets.only(right: 4.h),
                          decoration: BoxDecoration(
                            color: appTheme.amber300,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                            border: Border.all(
                              color: appTheme.gray50,
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 2.v,
                    bottom: 6.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_accountant".tr,
                          style: CustomTextStyles.bodyLargeLime700,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "msg_you_are_welcome".tr,
                        style: CustomTextStyles.bodySmallK2DGray80001,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Opacity(
                  opacity: 0.6,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 31.v,
                    ),
                    child: Text(
                      "lbl_yesterday".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: appTheme.yellow900,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Orange20020x21:
        return AppRoutes.rootMenuPage;
      case BottomBarEnum.Vector:
        return "/";
      case BottomBarEnum.Orange200:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.rootMenuPage:
        return RootMenuPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
