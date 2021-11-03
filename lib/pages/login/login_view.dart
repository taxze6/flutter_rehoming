import 'package:flutter/material.dart';
import 'package:flutter_rehoming/router/app_pages.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  @override
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => Get.offAndToNamed(AppRoutes.Home),
        child: const Center(
          child: Text('登录页,暂时没有制作'),
        ),
      ),
    );
  }
}
