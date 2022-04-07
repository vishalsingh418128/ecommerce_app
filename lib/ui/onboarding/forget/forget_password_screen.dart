import 'package:another_flushbar/flushbar.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/login/login_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends GetView<LoginController> {
  ForgetPasswordScreen({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Email Your Email',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              TextFormField(
                controller: email,
                style: TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              RaisedButton(
                child: Text('Send Email'),
                onPressed: () {
                  if(email.text == "12345" ){
                    Flushbar(
                      message:  "OTP send on your registered gmail",
                      duration:  Duration(seconds: 3),
                      titleColor: Colors.black,
                    ). show(context);
                  }


                },
              ),
              FlatButton(
                child: Text('Sign In'),
                onPressed: () {
                  Get.toNamed(Routes.loginScreen);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
