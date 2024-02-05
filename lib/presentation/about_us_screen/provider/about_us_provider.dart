import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/about_us_screen/models/about_us_model.dart';

/// A provider class for the AboutUsScreen.
///
/// This provider manages the state of the AboutUsScreen, including the
/// current aboutUsModelObj

// ignore_for_file: must_be_immutable
class AboutUsProvider extends ChangeNotifier {
  AboutUsModel aboutUsModelObj = AboutUsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
