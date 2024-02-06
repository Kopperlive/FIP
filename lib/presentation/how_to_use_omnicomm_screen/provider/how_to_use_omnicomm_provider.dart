import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/how_to_use_omnicomm_screen/models/how_to_use_omnicomm_model.dart';

/// A provider class for the HowToUseOmnicommScreen.
///
/// This provider manages the state of the HowToUseOmnicommScreen, including the
/// current howToUseOmnicommModelObj

// ignore_for_file: must_be_immutable
class HowToUseOmnicommProvider extends ChangeNotifier {
  HowToUseOmnicommModel howToUseOmnicommModelObj = HowToUseOmnicommModel();

  @override
  void dispose() {
    super.dispose();
  }
}
