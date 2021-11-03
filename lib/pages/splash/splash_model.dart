import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashModel {
  // ignore: non_constant_identifier_names
  late String Background;
  // ignore: non_constant_identifier_names
  late String SplashText;
  late String SplashButtonText;
  BuildContext? context = Get.context;

  SplashModel() {
    Background = "images/splash/Splash.png";
    SplashText = "Rehoming and adoption. You find each other.";
    SplashButtonText = "Let's Start";
  }
}
