import 'package:flutter/material.dart';
import 'package:nasa_app/constants/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.blue,
        child: const Center(
          child: Text(
            'NASA',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nasalization Rg',
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
