import 'package:flutter/material.dart';
import 'package:hojiakbar_s_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:hojiakbar_s_app/presentation/root_menu_container_screen/root_menu_container_screen.dart';
import 'package:hojiakbar_s_app/presentation/report_screen/report_screen.dart';
import 'package:hojiakbar_s_app/presentation/congratulations_window_screen/congratulations_window_screen.dart';
import 'package:hojiakbar_s_app/presentation/notifications_chat_screen/notifications_chat_screen.dart';
import 'package:hojiakbar_s_app/presentation/settings_screen/settings_screen.dart';
import 'package:hojiakbar_s_app/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:hojiakbar_s_app/presentation/change_password_screen/change_password_screen.dart';
import 'package:hojiakbar_s_app/presentation/language_screen/language_screen.dart';
import 'package:hojiakbar_s_app/presentation/about_us_screen/about_us_screen.dart';
import 'package:hojiakbar_s_app/presentation/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:hojiakbar_s_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String rootMenuPage = '/root_menu_page';

  static const String rootMenuContainerScreen = '/root_menu_container_screen';

  static const String reportScreen = '/report_screen';

  static const String congratulationsWindowScreen =
      '/congratulations_window_screen';

  static const String notificationsChatScreen = '/notifications_chat_screen';

  static const String settingsScreen = '/settings_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String languageScreen = '/language_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String privacyPolicyScreen = '/privacy_policy_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logInScreen: LogInScreen.builder,
        rootMenuContainerScreen: RootMenuContainerScreen.builder,
        reportScreen: ReportScreen.builder,
        congratulationsWindowScreen: CongratulationsWindowScreen.builder,
        notificationsChatScreen: NotificationsChatScreen.builder,
        settingsScreen: SettingsScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        changePasswordScreen: ChangePasswordScreen.builder,
        languageScreen: LanguageScreen.builder,
        aboutUsScreen: AboutUsScreen.builder,
        privacyPolicyScreen: PrivacyPolicyScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LogInScreen.builder
      };
}
