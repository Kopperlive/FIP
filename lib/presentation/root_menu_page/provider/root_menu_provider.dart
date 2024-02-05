import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_page/models/root_menu_model.dart';
import '../models/learnmoreaboutfinancialliterac_item_model.dart';

/// A provider class for the RootMenuPage.
///
/// This provider manages the state of the RootMenuPage, including the
/// current rootMenuModelObj

// ignore_for_file: must_be_immutable
class RootMenuProvider extends ChangeNotifier {
  RootMenuModel rootMenuModelObj = RootMenuModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
