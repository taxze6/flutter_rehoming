// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_rehoming/common/colors/colors.dart';
import 'package:flutter_rehoming/utils/screen_device.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);
  @override
  final controller = Get.put(SplashController());

  @override
  final state = Get.find<SplashController>().splashModelState;

  Widget Splash_Background(BuildContext context) => Image.asset(
        state.Background,
        fit: BoxFit.fill,
        width: getDeviceWidth(context),
        height: getDeviceHeight(context),
      );

  Widget Splash_Text_First(BuildContext context) => Text(
        state.SplashText.substring(0, 22),
        style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: AppColors.primaryText),
        textAlign: TextAlign.center,
      );

  Widget Splash_Text_Second(BuildContext context) => Text(
        state.SplashText.substring(23, 43),
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: AppColors.grayText),
        textAlign: TextAlign.center,
      );

  Widget Splash_Button(BuildContext context) => ScaleTransition(
        scale: Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
          parent: controller.animationController!,
          curve: const Interval(0.3, 0.6, curve: Curves.fastOutSlowIn),
        )),
        child: GestureDetector(
          onTap: () {
            controller.getTo();
          },
          child: Container(
            alignment: Alignment.center,
            height: 55,
            width: 150,
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
                color: AppColors.primaryText,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Text(
              state.SplashButtonText,
              style: const TextStyle(
                  color: AppColors.primatyBackground,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Splash_Background(context),
          Positioned(
              top: getDeviceHeight(context) / 1.6,
              width: getDeviceWidth(context),
              child: Center(
                child: SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      Splash_Text_First(context),
                      Splash_Text_Second(context),
                      Splash_Button(context),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
