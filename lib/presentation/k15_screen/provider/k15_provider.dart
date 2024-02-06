import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/k15_screen/models/k15_model.dart';

/// A provider class for the K15Screen.
///
/// This provider manages the state of the K15Screen, including the
/// current k15ModelObj
class K15Provider extends ChangeNotifier {
  K15Model k15ModelObj = K15Model();

  @override
  void dispose() {
    super.dispose();
  }
}
