import 'package:flutter/material.dart';

import 'package:senior_design_tokens/senior_design_tokens.dart';

import '../../senior_notification_snackbar.dart';

const notificationSnackbarLightTheme = const SeniorNotificationSnackbarThemeData(
  style: SeniorNotificationSnackbarStyle(
    actionButtonColor: SeniorColors.secondaryColor900,
    borderColor: Colors.transparent,
    color: SeniorColors.neutralColor200,
    messageColor: SeniorColors.secondaryColor700,
    titleColor: SeniorColors.secondaryColor900,
  ),
);
