import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:hangman_game/app/utils/media.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.find<SplashScreenController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              height: Get.height,
              width: Get.width,
              child: InkWell(
                  onTap: () async => await controller.goToHomeScreen(),
                  child: Lottie.asset(Media.loader1))),
        ),
      ),
    );
  }
}
