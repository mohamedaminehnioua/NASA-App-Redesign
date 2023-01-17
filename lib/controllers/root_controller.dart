import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootController extends GetxController {
  RxInt selectedIndex = 0.obs;

  void onItemTapped(int index, PageController controller) {
    selectedIndex.value = index;
    controller.animateToPage(
      selectedIndex.value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }
}
