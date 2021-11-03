import 'package:flutter/material.dart';
import 'package:flutter_rehoming/pages/splash/splash_model.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  final SplashModel splashModelState = SplashModel();

  AnimationController? animationController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animationController!.forward();
    _precacheImage(splashModelState.Background, splashModelState.context!);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("销毁");
    animationController!.dispose();
  }

  void _precacheImage(String imageUrl, BuildContext context) {
    precacheImage(AssetImage(imageUrl), context);
  }

  void getTo() {
    Get.offAllNamed("/login");
  }
}
