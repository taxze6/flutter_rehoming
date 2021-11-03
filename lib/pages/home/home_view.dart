import 'package:flutter/cupertino.dart';
import 'package:flutter_rehoming/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
