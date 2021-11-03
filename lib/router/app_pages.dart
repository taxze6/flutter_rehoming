import 'package:flutter_rehoming/pages/home/home_view.dart';
import 'package:flutter_rehoming/pages/index/index_view.dart';
import 'package:flutter_rehoming/pages/login/login_view.dart';
import 'package:get/get.dart';

part "app_routes.dart";

class AppPages {
  static final INITIAL = AppRoutes.Index;
  static final routes = [
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
    ),
    GetPage(name: AppRoutes.Index, page: () => IndexPage()),
    GetPage(name: AppRoutes.Login, page: () => LoginPage())
  ];

// static final unknownRoute = GetPage(
//   name: AppRoutes.NotFound,
//   page: () => NotfoundPage(),
// );
}
