import 'models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/core/utils/validation_functions.dart';
import 'package:hojiakbar_s_app/widgets/custom_elevated_button.dart';
import 'package:hojiakbar_s_app/widgets/custom_floating_text_field.dart';
import 'provider/log_in_provider.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  LogInScreenState createState() => LogInScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LogInProvider(), child: LogInScreen());
  }
}

// ignore_for_file: must_be_immutable
class LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.rootMenuContainer1Screen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray900,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 20.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: SizedBox(
                                  height: 889.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.img,
                                            height: 213.v,
                                            width: 386.h,
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25.h,
                                                    vertical: 40.v),
                                                decoration: AppDecoration
                                                    .outlineBlack
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder43),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                          width: 285.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 35.h,
                                                                  right: 21.h),
                                                          child: Text(
                                                              "msg_welcome_to_omnicomm"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .displayMedium)),
                                                      SizedBox(height: 15.v),
                                                      Text("lbl_log_in".tr,
                                                          style: CustomTextStyles
                                                              .headlineSmallBlack90001),
                                                      SizedBox(height: 9.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h),
                                                          child: Selector<
                                                                  LogInProvider,
                                                                  TextEditingController?>(
                                                              selector: (context,
                                                                      provider) =>
                                                                  provider
                                                                      .emailController,
                                                              builder: (context,
                                                                  emailController,
                                                                  child) {
                                                                return CustomFloatingTextField(
                                                                    controller:
                                                                        emailController,
                                                                    labelText:
                                                                        "lbl_email"
                                                                            .tr,
                                                                    labelStyle:
                                                                        CustomTextStyles
                                                                            .bodySmallBlack90001,
                                                                    hintText:
                                                                        "lbl_email"
                                                                            .tr,
                                                                    hintStyle:
                                                                        CustomTextStyles
                                                                            .bodySmallBlack90001,
                                                                    textInputType:
                                                                        TextInputType
                                                                            .emailAddress,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidEmail(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "err_msg_please_enter_valid_email"
                                                                            .tr;
                                                                      }
                                                                      return null;
                                                                    });
                                                              })),
                                                      SizedBox(height: 24.v),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h),
                                                          child: Selector<
                                                                  LogInProvider,
                                                                  TextEditingController?>(
                                                              selector: (context,
                                                                      provider) =>
                                                                  provider
                                                                      .passwordController,
                                                              builder: (context,
                                                                  passwordController,
                                                                  child) {
                                                                return CustomFloatingTextField(
                                                                    controller:
                                                                        passwordController,
                                                                    labelText:
                                                                        "lbl_password"
                                                                            .tr,
                                                                    labelStyle:
                                                                        CustomTextStyles
                                                                            .bodySmallBlack90001,
                                                                    hintText:
                                                                        "lbl_password"
                                                                            .tr,
                                                                    hintStyle:
                                                                        CustomTextStyles
                                                                            .bodySmallBlack90001,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done,
                                                                    textInputType:
                                                                        TextInputType
                                                                            .visiblePassword,
                                                                    obscureText:
                                                                        true,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          (!isValidPassword(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "err_msg_please_enter_valid_password"
                                                                            .tr;
                                                                      }
                                                                      return null;
                                                                    });
                                                              })),
                                                      SizedBox(height: 51.v),
                                                      CustomElevatedButton(
                                                          width: 139.h,
                                                          text: "lbl_go".tr,
                                                          onPressed: () {
                                                            onTapGO(context);
                                                          }),
                                                      SizedBox(height: 135.v),
                                                      RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "msg_don_t_have_an_account2"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumK2Dff000000),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_how_to_create_an"
                                                                            .tr,
                                                                    style: CustomTextStyles
                                                                        .bodyMediumK2Dff356070)
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left),
                                                      SizedBox(height: 47.v)
                                                    ])))
                                      ]))))
                    ])))));
  }

  /// Navigates to the rootMenuContainer1Screen when the action is triggered.
  onTapGO(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rootMenuContainer1Screen,
    );
  }
}
