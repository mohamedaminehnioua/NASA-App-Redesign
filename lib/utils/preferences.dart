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
    SystemUiOverlayStyle(
      statusBarColor: AppColors.black.withOpacity(0.4),
      systemNavigationBarColor: AppColors.black,
    ),
  );
}
