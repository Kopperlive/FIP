import 'models/how_to_use_omnicomm_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';
import 'provider/how_to_use_omnicomm_provider.dart';

class HowToUseOmnicommScreen extends StatefulWidget {
  const HowToUseOmnicommScreen({Key? key}) : super(key: key);

  @override
  HowToUseOmnicommScreenState createState() => HowToUseOmnicommScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HowToUseOmnicommProvider(),
        child: HowToUseOmnicommScreen());
  }
}

class HowToUseOmnicommScreenState extends State<HowToUseOmnicommScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildOmniDemoDayOne(context),
                  SizedBox(height: 1.v),
                  Text("lbl_watch_the_video".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 16.v),
                  _buildWelcomeToOMNICOMM(context),
                  SizedBox(height: 15.v),
                  _buildNowYouKnowHow(context),
                  SizedBox(height: 15.v)
                ])))));
  }

  /// Section Widget
  Widget _buildOmniDemoDayOne(BuildContext context) {
    return SizedBox(
        height: 466.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                  height: 365.v,
                  width: 382.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle28,
                        height: 270.v,
                        width: 269.h,
                        alignment: Alignment.topLeft),
                    CustomImageView(
                        imagePath: ImageConstant.imgOmniDemoDay1,
                        height: 230.v,
                        width: 180.h,
                        alignment: Alignment.bottomRight),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 196.h,
                            margin: EdgeInsets.only(left: 35.h, top: 86.v),
                            child: Text("msg_how_to_use_omnicomm".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.displaySmall)))
                  ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(bottom: 361.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
                  decoration: AppDecoration.outlineBlack90001,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 42.adaptSize,
                            width: 42.adaptSize,
                            margin: EdgeInsets.only(top: 35.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
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
                            padding: EdgeInsets.only(
                                left: 13.h, top: 46.v, bottom: 6.v),
                            child: Text("msg_turdieva_dilnaza".tr,
                                style: theme.textTheme.bodyLarge))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildWelcomeToOMNICOMM(BuildContext context) {
    return SizedBox(
        height: 190.v,
        width: 369.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.center,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.whiteA700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder24),
                  child: Container(
                      height: 190.v,
                      width: 368.h,
                      padding: EdgeInsets.symmetric(vertical: 23.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 104.v,
                                width: 285.h,
                                margin: EdgeInsets.only(top: 16.v),
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              width: 285.h,
                                              child: Text(
                                                  "msg_welcome_to_omnicomm".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme.textTheme
                                                      .displayMedium))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 110.h, bottom: 15.v),
                                          child: CustomIconButton(
                                              height: 56.adaptSize,
                                              width: 56.adaptSize,
                                              padding: EdgeInsets.all(14.h),
                                              alignment: Alignment.bottomLeft,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPlayer)))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                height: 24.v,
                                width: 161.h,
                                decoration: BoxDecoration(
                                    color: appTheme.cyan900,
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(12.h)))))
                      ])))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  height: 24.v,
                  width: 161.h,
                  margin: EdgeInsets.only(bottom: 23.v),
                  decoration: BoxDecoration(
                      color: appTheme.cyan900,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(12.h)))))
        ]));
  }

  /// Section Widget
  Widget _buildNowYouKnowHow(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: 340.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 328.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(left: 133.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 21.h, vertical: 35.v),
                                    decoration: AppDecoration.fillCyan.copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .customBorderBL150),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 25.v),
                                          Container(
                                              width: 207.h,
                                              margin:
                                                  EdgeInsets.only(left: 10.h),
                                              child: Text(
                                                  "msg_now_you_know_how".tr,
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: theme
                                                      .textTheme.headlineLarge))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgSticker1,
                                height: 291.v,
                                width: 253.h,
                                alignment: Alignment.bottomLeft)
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgSubtractGray900,
                      height: 101.v,
                      width: 649.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 27.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgOrange20021x22,
                      height: 21.v,
                      width: 22.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 37.v, right: 43.h)),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: 43.adaptSize,
                          width: 43.adaptSize,
                          decoration: BoxDecoration(
                              color: appTheme.yellow900,
                              borderRadius: BorderRadius.circular(21.h)))),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 11.v),
                      onTap: () {
                        onTapImgVector(context);
                      }),
                  CustomImageView(
                      imagePath: ImageConstant.img20x21,
                      height: 20.v,
                      width: 21.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 43.h, top: 38.v))
                ]))));
  }

  /// Navigates to the rootMenuContainer1Screen when the action is triggered.
  onTapImgVector(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rootMenuContainer1Screen,
    );
  }
}
