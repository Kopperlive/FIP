import 'models/congratulations_window_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';
import 'provider/congratulations_window_provider.dart';

class CongratulationsWindowScreen extends StatefulWidget {
  const CongratulationsWindowScreen({Key? key}) : super(key: key);

  @override
  CongratulationsWindowScreenState createState() =>
      CongratulationsWindowScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CongratulationsWindowProvider(),
        child: CongratulationsWindowScreen());
  }
}

class CongratulationsWindowScreenState
    extends State<CongratulationsWindowScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 48.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("lbl_successful".tr,
                      style: theme.textTheme.displayLarge),
                  Text("lbl_back_to_home".tr,
                      style: CustomTextStyles.bodyLargeBluegray500),
                  SizedBox(height: 15.v),
                  CustomIconButton(
                      height: 51.v,
                      width: 56.h,
                      padding: EdgeInsets.all(14.h),
                      onTap: () {
                        onTapBtnTuda(context);
                      },
                      child: CustomImageView(imagePath: ImageConstant.imgTuda)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the rootMenuContainerScreen when the action is triggered.
  onTapBtnTuda(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.rootMenuContainerScreen,
    );
  }
}
