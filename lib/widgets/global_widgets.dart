import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/fonts.dart';

class GlobalWidges {
  static Widget card(
    String title,
    String image, {
    ontap,
    double height = 180,
    double width = 150,
    BorderRadius? borderRadius,
  }) {
    return InkWell(
      onTap: ontap,
      splashColor: Colors.grey.withOpacity(0.1),
      borderRadius: borderRadius ?? BorderRadius.circular(20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                colors: [
                  AppColors.black.withOpacity(0.6),
                  AppColors.black.withOpacity(0.5),
                  AppColors.black.withOpacity(0.4),
                  AppColors.black.withOpacity(0.3),
                  AppColors.black.withOpacity(0.2),
                  AppColors.black.withOpacity(0.1),
                  AppColors.black.withOpacity(0),
                ],
              ),
            ),
          ),
          Ink(
            height: height,
            width: width,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              // color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: borderRadius ?? BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: AppFonts.interFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget bigCard({
    required String image,
    ontap,
    double height = 200,
    double? width,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: InkWell(
        onTap: ontap,
        splashColor: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    AppColors.black.withOpacity(0.9),
                    AppColors.black.withOpacity(0.8),
                    AppColors.black.withOpacity(0.7),
                    AppColors.black.withOpacity(0.6),
                    AppColors.black.withOpacity(0.5),
                    AppColors.black.withOpacity(0.4),
                    AppColors.black.withOpacity(0.3),
                    AppColors.black.withOpacity(0.2),
                    AppColors.black.withOpacity(0.1),
                    AppColors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
            Ink(
              height: height,
              width: width ?? Get.width,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://media.zenfs.com/en/best_life_342/ac5f07215e7f2796146e5287de17dc20'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        'NASA Finnaly got a clean picture of Pluto',
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: AppFonts.interFamily,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/playIcon.svg',
                      height: 50,
                      width: 50,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
