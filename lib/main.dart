import 'package:flutter/material.dart';
import 'package:flutter_rehoming/pages/index/index_view.dart';
import 'package:get/get.dart';

import 'global.dart';
import 'pages/index/index_binding.dart';
import 'router/app_pages.dart';

void main() => Global.init().then((value) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Rehoming',
      debugShowCheckedModeBanner: false,
      enableLog: true,
      getPages: AppPages.routes,
      initialBinding: IndexBinding(),
      initialRoute: AppPages.INITIAL,
      home: IndexPage(),
    );
  }
}
