import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_switch.dart';
import 'provider/settings_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  SettingsScreenState createState() => SettingsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsProvider(), child: SettingsScreen());
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildRowWithCircleImages(context),
                      _buildRowWithSettings(context),
                      Divider(),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("msg_account_settings".tr,
                              style: CustomTextStyles.bodyLargeGray500)),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "lbl_edit_profile".tr,
                              onTapArrowRight: () {
                            onTapArrowRight(context);
                          })),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "lbl_change_password".tr,
                              onTapArrowRight: () {
                            onTapArrowRight1(context);
                          })),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "lbl_language".tr,
                              onTapArrowRight: () {
                            onTapArrowRight2(context);
                          })),
                      SizedBox(height: 29.v),
                      _buildRowWithPushNotifications(context),
                      SizedBox(height: 32.v),
                      _buildRowWithDarkMode(context),
                      SizedBox(height: 32.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h),
                          child: Text("lbl_more".tr,
                              style: CustomTextStyles.bodyLargeRubikGray500)),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "lbl_about_us".tr,
                              onTapArrowRight: () {
                            onTapArrowRight3(context);
                          })),
                      SizedBox(height: 32.v),
                      Padding(
                          padding: EdgeInsets.only(left: 27.h, right: 45.h),
                          child: _buildRowWithChangePassword(context,
                              changePasswordText: "lbl_privacy_policy".tr,
                              onTapArrowRight: () {
                            onTapArrowRight4(context);
                          })),
                      SizedBox(height: 19.v),
                      _buildStackWithSubtractAndView(context),
                      SizedBox(height: 19.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildRowWithCircleImages(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v),
        decoration: AppDecoration.fillGray,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Container(
              height: 42.adaptSize,
              width: 42.adaptSize,
              margin: EdgeInsets.only(top: 35.v),
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse7,
                    height: 42.adaptSize,
                    width: 42.adaptSize,
                    radius: BorderRadius.circular(21.h),
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    radius: BorderRadius.circular(16.h),
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 46.v, bottom: 6.v),
              child: Text("msg_turdieva_dilnaza".tr,
                  style: theme.textTheme.bodyLarge))
        ]));
  }

  /// Section Widget
  Widget _buildRowWithSettings(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
        decoration: AppDecoration.fillGray100,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: Text("lbl_settings".tr,
                  style: theme.textTheme.headlineSmall)),
          CustomImageView(
              imagePath: ImageConstant.imgCloseWhiteA70001,
              height: 42.adaptSize,
              width: 42.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildRowWithPushNotifications(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 37.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text("msg_push_notifications".tr,
                          style: CustomTextStyles.bodyLargeGray80001)),
                  Selector<SettingsProvider, bool?>(
                      selector: (context, provider) =>
                          provider.isSelectedSwitch,
                      builder: (context, isSelectedSwitch, child) {
                        return CustomSwitch(
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<SettingsProvider>()
                                  .changeSwitchBox1(value);
                            });
                      })
                ])));
  }

  /// Section Widget
  Widget _buildRowWithDarkMode(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 27.h, right: 37.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text("lbl_dark_mode".tr,
                          style: CustomTextStyles.bodyLargeGray80001)),
                  Selector<SettingsProvider, bool?>(
                      selector: (context, provider) =>
                          provider.isSelectedSwitch1,
                      builder: (context, isSelectedSwitch1, child) {
                        return CustomSwitch(
                            value: isSelectedSwitch1,
                            onChange: (value) {
                              context
                                  .read<SettingsProvider>()
                                  .changeSwitchBox2(value);
                            });
                      })
                ])));
  }

  /// Section Widget
  Widget _buildStackWithSubtractAndView(BuildContext context) {
    return SizedBox(
        height: 109.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSubtractGray900,
              height: 101.v,
              width: 393.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topRight,
              child: Container(
                  height: 43.adaptSize,
                  width: 43.adaptSize,
                  margin: EdgeInsets.only(right: 34.h),
                  decoration: BoxDecoration(
                      color: appTheme.yellow900,
                      borderRadius: BorderRadius.circular(21.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 42.h, top: 38.v),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMegaphone,
                        height: 20.v,
                        width: 21.h),
                    CustomImageView(
                        imagePath: ImageConstant.imgHomeOrange200,
                        height: 21.adaptSize,
                        width: 21.adaptSize,
                        margin: EdgeInsets.only(left: 118.h))
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgSearchGray100,
              height: 21.v,
              width: 22.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 11.v, right: 44.h))
        ]));
  }

  /// Common widget
  Widget _buildRowWithChangePassword(
    BuildContext context, {
    required String changePasswordText,
    Function? onTapArrowRight,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(changePasswordText,
              style: CustomTextStyles.bodyLargeGray80001
                  .copyWith(color: appTheme.gray80001)),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 12.v,
              width: 7.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 8.v),
              onTap: () {
                onTapArrowRight!.call();
              })
        ]);
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.editProfileScreen,
    );
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapArrowRight1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.changePasswordScreen,
    );
  }

  /// Navigates to the languageScreen when the action is triggered.
  onTapArrowRight2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.languageScreen,
    );
  }

  /// Navigates to the aboutUsScreen when the action is triggered.
  onTapArrowRight3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.aboutUsScreen,
    );
  }

  /// Navigates to the privacyPolicyScreen when the action is triggered.
  onTapArrowRight4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.privacyPolicyScreen,
    );
  }
}
