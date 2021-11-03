import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    startCountdownTimer();
  }

  // 展示登录页，倒计时1.5秒之后进入应用
  Future startCountdownTimer() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      Get.offAllNamed("/home");
    });
  }
}
