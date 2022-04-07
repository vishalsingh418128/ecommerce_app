import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/flutter_screen/flutter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlutterScreen extends GetView<FlutterController> {
  const FlutterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("flutter"),
        ),
        body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .1, vertical: 100),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.loginScreen);
                      },
                      child: Container(
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.signupScreen);
                      },
                      child: Container(
                        child: const Text(
                          'Sigh Up',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.imageScreen);
                      },
                      child: Container(
                        child: const Text(
                          'Image',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.forgetPasswordScreen);
                      },
                      child: Container(
                        child: const Text(
                          'Forget Passwaod',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.introScreen);
                      },
                      child: Container(
                        child: const Text(
                          'Intro',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.toNamed(Routes.homePageScreen);
                      },
                      child: Container(
                        child: const Text(
                          'home',
                          style: TextStyle(fontSize: 35),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.yellowAccent,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        height: Get.height * .1,
                        width: Get.width * .8,
                      ),
                    ),
                  ])),
        ));
  }
}
