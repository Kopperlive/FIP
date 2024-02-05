import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_page/root_menu_page.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_radio_button.dart';
import 'provider/language_provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenState createState() => LanguageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageProvider(), child: LanguageScreen());
  }
}

// ignore_for_file: must_be_immutable
class LanguageScreenState extends State<LanguageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildRowWithCircleImages(context),
                              _buildRowWithArrowAndLanguage(context),
                              SizedBox(height: 32.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("lbl_suggested".tr,
                                      style:
                                          CustomTextStyles.titleMediumPoppins)),
                              SizedBox(height: 11.v),
                              _buildSuggestedRadioGroup(context),
                              SizedBox(height: 45.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("lbl_others".tr,
                                      style:
                                          CustomTextStyles.titleMediumPoppins)),
                              SizedBox(height: 13.v),
                              _buildOthersRadioGroup(context)
                            ])))),
            bottomNavigationBar: _buildBottomBar(context)));
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
  Widget _buildRowWithArrowAndLanguage(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 11.v),
        decoration: AppDecoration.fillGray100,
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 23.v,
              width: 15.h,
              margin: EdgeInsets.only(top: 19.v, bottom: 8.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 90.h, top: 17.v),
              child:
                  Text("lbl_language".tr, style: theme.textTheme.headlineSmall))
        ]));
  }

  /// Section Widget
  Widget _buildSuggestedRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child:
                Consumer<LanguageProvider>(builder: (context, provider, child) {
              return provider.languageModelObj!.radioList.isNotEmpty
                  ? Column(children: [
                      CustomRadioButton(
                          width: 342.h,
                          text: "lbl_english_us".tr,
                          value: provider.languageModelObj?.radioList[0] ?? "",
                          groupValue: provider.suggestedRadioGroup,
                          padding: EdgeInsets.symmetric(vertical: 2.v),
                          isRightCheck: true,
                          onChange: (value) {
                            provider.changeRadioButton1(value);
                          }),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_english_uk".tr,
                              value:
                                  provider.languageModelObj?.radioList[1] ?? "",
                              groupValue: provider.suggestedRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 4.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton1(value);
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildOthersRadioGroup(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child:
                Consumer<LanguageProvider>(builder: (context, provider, child) {
              return provider.languageModelObj!.radioList1.isNotEmpty
                  ? Column(children: [
                      CustomRadioButton(
                          width: 342.h,
                          text: "lbl_mandarin".tr,
                          value: provider.languageModelObj?.radioList1[0] ?? "",
                          groupValue: provider.othersRadioGroup,
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          isRightCheck: true,
                          onChange: (value) {
                            provider.changeRadioButton2(value);
                          }),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_hindi".tr,
                              value: provider.languageModelObj?.radioList1[1] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_spanish".tr,
                              value: provider.languageModelObj?.radioList1[2] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 2.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_french".tr,
                              value: provider.languageModelObj?.radioList1[3] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_arabic".tr,
                              value: provider.languageModelObj?.radioList1[4] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_russian".tr,
                              value: provider.languageModelObj?.radioList1[5] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_indonesia".tr,
                              value: provider.languageModelObj?.radioList1[6] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              })),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v),
                          child: CustomRadioButton(
                              width: 342.h,
                              text: "lbl_vietnamese".tr,
                              value: provider.languageModelObj?.radioList1[7] ??
                                  "",
                              groupValue: provider.othersRadioGroup,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              isRightCheck: true,
                              onChange: (value) {
                                provider.changeRadioButton2(value);
                              }))
                    ])
                  : Container();
            })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
