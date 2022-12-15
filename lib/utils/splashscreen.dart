import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa_app/views/home/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
          const Duration(seconds: 4),
          () => Get.off(
                () => const HomeView(),
                transition: Transition.fadeIn,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: Get.height * 0.3,
          width: Get.width * 0.5,
          child: Lottie.asset(
            'assets/lotties/splashscreen.json',
            repeat: false,
          ),
        ),
      ),
    );
  }
}
