import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/fonts.dart';

class HomeWidgets {
  static Widget bigCard({
    double height = 200,
    double? width,
    bool isAPOD = true,
  }) {
    return Ink(
      height: height,
      width: width ?? Get.width,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://media.istockphoto.com/id/1035676256/photo/background-of-galaxy-and-stars.jpg?s=612x612&w=0&k=20&c=dh7eWJ6ovqnQZ9QwQQlq2wxqmAR7mgRlQTgaIylgBwc='),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'IMAGE OF THE DAY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: AppFonts.interFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                child: Container(
                  height: 40.0,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'See Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: AppFonts.interFamily,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
