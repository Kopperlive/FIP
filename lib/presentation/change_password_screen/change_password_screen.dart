import 'models/change_password_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/core/utils/validation_functions.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_page/root_menu_page.dart';
import 'package:hojiakbar_s_app/widgets/custom_bottom_bar.dart';
import 'package:hojiakbar_s_app/widgets/custom_floating_text_field.dart';
import 'provider/change_password_provider.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  ChangePasswordScreenState createState() => ChangePasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ChangePasswordProvider(),
        child: ChangePasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ChangePasswordScreenState extends State<ChangePasswordScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: _buildChangePasswordSection(context))),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildChangePasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(children: [
          Container(
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
                    padding:
                        EdgeInsets.only(left: 13.h, top: 46.v, bottom: 6.v),
                    child: Text("msg_turdieva_dilnaza".tr,
                        style: theme.textTheme.bodyLarge))
              ])),
          Container(
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
                    padding: EdgeInsets.only(left: 56.h, top: 17.v),
                    child: Text("lbl_change_password2".tr,
                        style: theme.textTheme.headlineSmall))
              ])),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.only(left: 26.h, right: 25.h),
              child: Selector<ChangePasswordProvider, TextEditingController?>(
                  selector: (context, provider) => provider.passwordController,
                  builder: (context, passwordController, child) {
                    return CustomFloatingTextField(
                        controller: passwordController,
                        labelText: "lbl_old_password".tr,
                        labelStyle: CustomTextStyles.bodyMediumK2DBlack90001,
                        hintText: "lbl_old_password".tr,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        contentPadding:
                            EdgeInsets.fromLTRB(20.h, 23.v, 20.h, 14.v));
                  })),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(left: 26.h, right: 25.h),
              child: Selector<ChangePasswordProvider, TextEditingController?>(
                  selector: (context, provider) =>
                      provider.newpasswordController,
                  builder: (context, newpasswordController, child) {
                    return CustomFloatingTextField(
                        controller: newpasswordController,
                        labelText: "lbl_new_password".tr,
                        labelStyle: CustomTextStyles.bodyMediumK2DBlack90001,
                        hintText: "lbl_new_password".tr,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        contentPadding:
                            EdgeInsets.fromLTRB(20.h, 23.v, 20.h, 14.v));
                  })),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(left: 26.h, right: 25.h),
              child: Selector<ChangePasswordProvider, TextEditingController?>(
                  selector: (context, provider) =>
                      provider.newpasswordController1,
                  builder: (context, newpasswordController1, child) {
                    return CustomFloatingTextField(
                        controller: newpasswordController1,
                        labelText: "msg_repeat_new_password".tr,
                        labelStyle: CustomTextStyles.bodyMediumK2DBlack90001,
                        hintText: "msg_repeat_new_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if (value == null ||
                              (!isValidPassword(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_password".tr;
                          }
                          return null;
                        },
                        contentPadding:
                            EdgeInsets.fromLTRB(20.h, 23.v, 20.h, 14.v));
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
