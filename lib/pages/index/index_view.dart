import 'package:flutter/material.dart';
import '../login/login_view.dart';
import '../home/home_view.dart';
import '../splash/splash_view.dart';
import 'package:get/get.dart';

import '../../global.dart';
import 'index_controller.dart';

class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: controller.isloadWelcomePage.isTrue
          ? SplashPage()
          : Global.isOfflineLogin
          ? HomePage()
          : LoginPage(),
    ));
  }
}
