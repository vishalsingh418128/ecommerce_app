import 'dart:async';

import 'package:ecommerce_app/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration =  const Duration(seconds: 3);
    return Timer(_duration, (navigationPage));
  }

  void navigationPage() {
Get.toNamed(Routes.introScreen);
  }
}