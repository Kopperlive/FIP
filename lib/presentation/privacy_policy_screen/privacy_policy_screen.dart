import 'models/privacy_policy_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'provider/privacy_policy_provider.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  PrivacyPolicyScreenState createState() => PrivacyPolicyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PrivacyPolicyProvider(),
        child: PrivacyPolicyScreen());
  }
}

class PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
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
                    child: Column(children: [
                  _buildRowWithCircleImages(context),
                  _buildRowWithArrowAndPrivacyPolicy(context),
                  SizedBox(height: 13.v),
                  SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 26.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("msg_1_types_data_we".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 16.v),
                                      Container(
                                          width: 334.h,
                                          margin: EdgeInsets.only(right: 5.h),
                                          child: Text(
                                              "msg_lorem_ipsum_dolor".tr,
                                              maxLines: 9,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumK2D_1)),
                                      SizedBox(height: 13.v),
                                      Text("msg_2_use_of_your_personal".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 9.v),
                                      SizedBox(
                                          width: 340.h,
                                          child: Text(
                                              "msg_sed_ut_perspiciatis".tr,
                                              maxLines: 7,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumK2D_1)),
                                      SizedBox(height: 16.v),
                                      Text("msg_3_disclosure_of".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 9.v),
                                      SizedBox(
                                          width: 335.h,
                                          child: Text(
                                              "msg_at_vero_eos_et_accusamus".tr,
                                              maxLines: 19,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumK2D_1))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgGray900,
                            height: 109.v,
                            width: 393.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 121.v))
                      ])),
                  SizedBox(height: 13.v)
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
  Widget _buildRowWithArrowAndPrivacyPolicy(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 11.v),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 23.v,
                  width: 15.h,
                  margin: EdgeInsets.only(top: 19.v, bottom: 8.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 17.v, right: 72.h),
                  child: Text("lbl_privacy_policy2".tr,
                      style: theme.textTheme.headlineSmall))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
