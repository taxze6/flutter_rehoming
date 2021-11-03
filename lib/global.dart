import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'utils/local_storage.dart';
import 'common/values/values.dart';
import 'pages/login/login_model.dart';
class Global{
  /// 用户配置
  static UserLoginResponseModel? profile = UserLoginResponseModel(token: null);

  ///是否是第一次打开
  static bool isFirstOpen = false;

  ///是否登录
  static bool isOfflineLogin = false;

  ///init
  static Future init() async {
    // 运行初始
    WidgetsFlutterBinding.ensureInitialized();

    //本地存储初始化
    await LoacalStorage.init();

    isFirstOpen = !LoacalStorage().getBool(STORAGE_DEVICE_ALREADY_OPEN_KEY);
    if (isFirstOpen) {
      LoacalStorage().setBool(STORAGE_DEVICE_ALREADY_OPEN_KEY, true);
    }

    // 读取离线用户信息
    var _profileJSON = LoacalStorage().getJSON(STORAGE_USER_PROFILE_KEY);
    if (_profileJSON != null) {
      profile = UserLoginResponseModel.fromJson(_profileJSON);
      isOfflineLogin = true;
    }

    // android 状态栏为透明的沉浸
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
  // 持久化 用户信息
  static Future<bool> saveProfile(UserLoginResponseModel userResponse) {
    profile = userResponse;
    return LoacalStorage().setJSON(STORAGE_USER_PROFILE_KEY, userResponse.toJson());
  }
}