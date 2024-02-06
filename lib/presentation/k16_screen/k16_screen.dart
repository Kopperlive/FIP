import 'models/k16_model.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_switch.dart';
import 'provider/k16_provider.dart';

class K16Screen extends StatefulWidget {
  const K16Screen({Key? key})
      : super(
          key: key,
        );

  @override
  K16ScreenState createState() => K16ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => K16Provider(),
      child: K16Screen(),
    );
  }
}

class K16ScreenState extends State<K16Screen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray50,
        body: Container(
          width: 294.h,
          padding: EdgeInsets.symmetric(vertical: 12.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_full_name".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_name_gmail_com".tr,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 11.v),
              Divider(),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLockBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_my_profile2".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSearchBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_settings".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.v),
              _buildMobile(context),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserBlueGray900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "msg_guide_tutorials".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_help_center".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Divider(),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLockRed900,
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 3.v,
                      ),
                      child: Text(
                        "lbl_log_out".tr,
                        style: CustomTextStyles.titleMediumRed900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMobile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 30.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 2.v,
            ),
            child: Text(
              "lbl_dark_mode2".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          Selector<K16Provider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch,
            builder: (context, isSelectedSwitch, child) {
              return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<K16Provider>().changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
