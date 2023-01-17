import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nasa_app/constants/colors.dart';
import 'package:nasa_app/constants/fonts.dart';
import 'package:nasa_app/utils/preferences.dart';

import 'utils/bindings.dart';
import 'utils/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //Oriontations & Status bar ... :
  appPreferences();
  // Start app:
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'NASA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.blue,
        fontFamily: AppFonts.interFamily,
      ),
      initialBinding: Binding(),
      home: const SplashScreen(),
    );
  }
}
