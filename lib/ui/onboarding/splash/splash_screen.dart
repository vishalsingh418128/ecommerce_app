import 'package:ecommerce_app/ui/onboarding/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Center(child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50,),
          const Text('Welcome ',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
          const Text('To Fresh Shop',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
          Image.asset('assets/Screenshot 2022-04-05 at 2.42.52 PM.png',height:250 ,width: 250,),

          Center(child: Image.asset('assets/Screenshot 2022-04-05 at 2.28.11 PM.png')),
        ],
      ),
    )),
    );
  }
}