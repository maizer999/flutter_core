import 'package:flutter/material.dart';
import 'package:flutter_core/features/login/views/login_view.dart';
import 'dart:async';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_sizes.dart';
import '../../../constants/app_strings.dart';
import '../../../widgets/common_text_widget.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  UserLoginView()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.backgroundSplash),
                      fit: BoxFit.cover))),
    Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, AppColors.kPrimaryColor],
    ),
    ),
    ),  Positioned(
            top: MediaQuery.of(context).size.height / 2 + 30,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonTextWidget(
                  text: AppStrings.splashTitle,
                  color: AppColors.kWhite,
                  fontSize: AppSizes.size30,
                  fontWeight: FontWeight.bold,
                ),
                Text(
                  AppStrings.splashTitle,
                  style: TextStyle(
                    color: AppColors.kWhite,
                    fontSize: AppSizes.size30,// Use ScreenUtil for responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

