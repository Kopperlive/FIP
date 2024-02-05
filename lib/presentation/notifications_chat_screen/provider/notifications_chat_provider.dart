import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/core/app_export.dart';
import 'package:hojiakbar_s_app/presentation/notifications_chat_screen/models/notifications_chat_model.dart';

/// A provider class for the NotificationsChatScreen.
///
/// This provider manages the state of the NotificationsChatScreen, including the
/// current notificationsChatModelObj
class NotificationsChatProvider extends ChangeNotifier {
  NotificationsChatModel notificationsChatModelObj = NotificationsChatModel();

  @override
  void dispose() {
    super.dispose();
  }
}
