import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/report_screen/models/report_model.dart';

/// A provider class for the ReportScreen.
///
/// This provider manages the state of the ReportScreen, including the
/// current reportModelObj
class ReportProvider extends ChangeNotifier {
  ReportModel reportModelObj = ReportModel();

  @override
  void dispose() {
    super.dispose();
  }
}
