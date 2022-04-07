import 'package:ecommerce_app/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroController extends GetxController {
  final introKey = GlobalKey<IntroductionScreenState>();

  void onIntroEnd(context) {
    Get.toNamed(Routes.loginScreen);
  }

  Widget buildFullscreenImage() {
    return Image.network(
      'https://i.pinimg.com/736x/de/a0/f3/dea0f3b7f480b1151c08db4a402a43b9.jpg',
      // fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget buildImage(String assetName, [double width = 350]) {
    return Image.network(assetName, width: width);
  }
  static const bodyStyle = TextStyle(fontSize: 19.0);

  static const pageDecoration = PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
    bodyTextStyle: bodyStyle,
    bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    pageColor: Colors.white,
    imagePadding: EdgeInsets.zero,
  );
}
