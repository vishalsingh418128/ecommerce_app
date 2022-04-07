import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/intro/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends GetView<IntroController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          title: Text("intro"),
        ),
        body: InkWell(
          onTap: () {
            Get.toNamed(Routes.flutterScreen);
          },
          child: const Text('signup',
            style: TextStyle(fontSize: 20,color: Colors.black),),
        )
        );
  }
}
