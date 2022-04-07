
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/login/login_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginController> {
   LoginScreen({Key? key}) : super(key: key);

TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: (){
                Get.toNamed(Routes.flutterScreen);
      },
              child: Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(height: 250,width: 500,
                    child: Container(
                        width: 200,
                        height: 200,

                        /*decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50.0)),*/
                        child: Image.network('https://image.shutterstock.com/z/stock-vector-supermarket-or-big-grocery-store-trading-room-interior-cartoon-vector-background-with-racks-full-of-1300734259.jpg')),
                  ),

                ),
              ),
            ),
             Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
                Get.toNamed(Routes.forgetPasswordScreen);
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  if(email.text == "vishal@gmail.com" &&  pass.text == "Vishal"){
                    Get.toNamed(Routes.homePageScreen);
                  }


                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),

                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            InkWell(
                onTap: (){
                  Get.toNamed(Routes.newUserScreen);
                },
                child: Text('New User? Create Account'))
          ],
        ),
      ),
    );
  }
}
