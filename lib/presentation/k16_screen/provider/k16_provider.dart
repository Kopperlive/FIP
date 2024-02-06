import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/k16_screen/models/k16_model.dart';

/// A provider class for the K16Screen.
///
/// This provider manages the state of the K16Screen, including the
/// current k16ModelObj
class K16Provider extends ChangeNotifier {
  K16Model k16ModelObj = K16Model();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
