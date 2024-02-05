import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/language_screen/models/language_model.dart';

/// A provider class for the LanguageScreen.
///
/// This provider manages the state of the LanguageScreen, including the
/// current languageModelObj

// ignore_for_file: must_be_immutable
class LanguageProvider extends ChangeNotifier {
  LanguageModel languageModelObj = LanguageModel();

  String suggestedRadioGroup = "";

  String othersRadioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    suggestedRadioGroup = value;
    notifyListeners();
  }

  void changeRadioButton2(String value) {
    othersRadioGroup = value;
    notifyListeners();
  }
}
