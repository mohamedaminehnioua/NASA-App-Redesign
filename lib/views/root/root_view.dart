import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nasa_app/constants/colors.dart';
import 'package:nasa_app/controllers/root_controller.dart';
import 'package:nasa_app/views/home/home_view.dart';
import 'package:nasa_app/views/missions/missions_view.dart';
import 'package:nasa_app/views/planets/planets_view.dart';
import 'package:nasa_app/views/videos/videos_view.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    final RootController rootCtrl = Get.find<RootController>();

    final PageController pageViewController = PageController();
    return Scaffold(
      backgroundColor: AppColors.black,
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          overscroll.paintOffset = 0.3;
          return true;
        },
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            PageView(
              padEnds: false,
              controller: pageViewController,
              onPageChanged: (value) {
                rootCtrl.selectedIndex.value = value;
              },
              // physics: const BouncingScrollPhysics(),
              children: const [
                HomeView(),
                VideosView(),
                PlanetsView(),
                MissionsView(),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Builder(builder: (context) {
                  return IconButton(
                    splashRadius: 15.0,
                    splashColor: AppColors.black.withOpacity(0.3),
                    highlightColor: AppColors.black.withOpacity(0.3),
                    onPressed: () {
                      //Open drawer:
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        semanticLabel: 'Hello nasa',
        elevation: 3,
        backgroundColor: AppColors.black,
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 55,
        width: Get.width * 0.8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Obx(
              () => BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor:
                    const Color.fromARGB(255, 199, 199, 199).withOpacity(0.7),
                elevation: 0,
                selectedItemColor: AppColors.black,
                unselectedItemColor: Colors.white,
                // iconSize: 21,
                currentIndex: rootCtrl.selectedIndex.value,
                onTap: ((value) =>
                    rootCtrl.onItemTapped(value, pageViewController)),
                items: const [
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    label: '',
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    label: '',
                    icon: Icon(Icons.videocam),
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    label: '',
                    icon: Icon(Icons.public),
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    label: '',
                    icon: Icon(Icons.rocket_launch),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
