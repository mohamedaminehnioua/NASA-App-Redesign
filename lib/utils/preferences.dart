import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

void appPreferences() {
  // Oriontations:
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  // Status bar Color:
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.blue,
      systemNavigationBarColor: Colors.white,
    ),
  );
}
