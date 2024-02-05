import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_screen/models/root_menu_container_model.dart';

/// A provider class for the RootMenuContainerScreen.
///
/// This provider manages the state of the RootMenuContainerScreen, including the
/// current rootMenuContainerModelObj

// ignore_for_file: must_be_immutable
class RootMenuContainerProvider extends ChangeNotifier {
  RootMenuContainerModel rootMenuContainerModelObj = RootMenuContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
