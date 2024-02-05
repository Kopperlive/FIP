import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/congratulations_window_screen/models/congratulations_window_model.dart';

/// A provider class for the CongratulationsWindowScreen.
///
/// This provider manages the state of the CongratulationsWindowScreen, including the
/// current congratulationsWindowModelObj

// ignore_for_file: must_be_immutable
class CongratulationsWindowProvider extends ChangeNotifier {
  CongratulationsWindowModel congratulationsWindowModelObj =
      CongratulationsWindowModel();

  @override
  void dispose() {
    super.dispose();
  }
}
