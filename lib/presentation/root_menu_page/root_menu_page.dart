import '../root_menu_page/widgets/learnmoreaboutfinancialliterac_item_widget.dart';
import 'models/learnmoreaboutfinancialliterac_item_model.dart';
import 'models/root_menu_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/root_menu_provider.dart';

class RootMenuPage extends StatefulWidget {
  const RootMenuPage({Key? key}) : super(key: key);

  @override
  RootMenuPageState createState() => RootMenuPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RootMenuProvider(), child: RootMenuPage());
  }
}

class RootMenuPageState extends State<RootMenuPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray100,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildRowWithCircleImages(context),
                          SizedBox(height: 14.v),
                          _buildStackWithTextAndSlider(context),
                          SizedBox(height: 18.v),
                          Text("msg_please_confirm".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 15.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  themeText: "lbl_theme".tr,
                                  fileNameText: "lbl_file_name_pdf".tr,
                                  onTapTuda: () {
                                onTapTuda(context);
                              })),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  themeText: "lbl_theme".tr,
                                  fileNameText: "lbl_file_name_pdf".tr)),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  themeText: "lbl_theme".tr,
                                  fileNameText: "lbl_file_name_pdf".tr)),
                          SizedBox(height: 19.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 35.h),
                              child: _buildRowWithReport2(context,
                                  themeText: "lbl_theme".tr,
                                  fileNameText: "lbl_file_name_pdf".tr))
                        ]))))));
  }

  /// Section Widget
  Widget _buildRowWithCircleImages(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
        decoration: AppDecoration.outlineBlack90001,
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
  Widget _buildStackWithTextAndSlider(BuildContext context) {
    return SizedBox(
        height: 201.v,
        width: 392.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Consumer<RootMenuProvider>(builder: (context, provider, child) {
            return CarouselSlider.builder(
                options: CarouselOptions(
                    height: 201.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      provider.sliderIndex = index;
                    }),
                itemCount: provider.rootMenuModelObj
                    .learnmoreaboutfinancialliteracItemList.length,
                itemBuilder: (context, index, realIndex) {
                  LearnmoreaboutfinancialliteracItemModel model = provider
                      .rootMenuModelObj
                      .learnmoreaboutfinancialliteracItemList[index];
                  return LearnmoreaboutfinancialliteracItemWidget(model);
                });
          }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<RootMenuProvider>(
                  builder: (context, provider, child) {
                return Container(
                    height: 6.v,
                    margin: EdgeInsets.only(bottom: 9.v),
                    child: AnimatedSmoothIndicator(
                        activeIndex: provider.sliderIndex,
                        count: provider.rootMenuModelObj
                            .learnmoreaboutfinancialliteracItemList.length,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                            spacing: 2,
                            activeDotColor: appTheme.yellow900,
                            dotColor: appTheme.blueGray100,
                            dotHeight: 6.v,
                            dotWidth: 6.h)));
              }))
        ]));
  }

  /// Common widget
  Widget _buildRowWithReport2(
    BuildContext context, {
    required String themeText,
    required String fileNameText,
    Function? onTapTuda,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
        decoration: AppDecoration.outlineBlack900011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(themeText,
                            style: CustomTextStyles.bodyLargeGray8000119
                                .copyWith(color: appTheme.gray80001)),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgAttach,
                                  height: 11.v,
                                  width: 9.h,
                                  margin: EdgeInsets.symmetric(vertical: 1.v)),
                              Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(fileNameText,
                                      style: CustomTextStyles
                                          .bodySmallK2DGray700Light
                                          .copyWith(color: appTheme.gray700)))
                            ]))
                      ])),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.v),
                  child: CustomIconButton(
                      height: 26.v,
                      width: 29.h,
                      padding: EdgeInsets.all(7.h),
                      onTap: () {
                        onTapTuda!.call();
                      },
                      child: CustomImageView(imagePath: ImageConstant.imgTuda)))
            ]));
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapTuda(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.reportScreen,
    );
  }
}
