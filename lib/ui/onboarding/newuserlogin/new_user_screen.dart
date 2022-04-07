import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/newuserlogin/new_user_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class NewUserScreen extends GetView<NewUserController> {
   NewUserScreen({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Image.network(
             "https://www.teahub.io/photos/full/333-3334183_grocery-cart-with-item-aisle-commerce-food-indoors.jpg", height:3500,
              width:500,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28.0, vertical: 30),
                    child: Card(
                      elevation: 2.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(

                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                            child: TextField(
                              controller: name,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                  fontFamily: "SinikkaSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  // border: InputBorder.none,
                                  icon: Icon(
                                    FontAwesomeIcons.user,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),

                                  hintText: "Enter your name",
                                  hintStyle: TextStyle(
                                      fontFamily: "SignikaSemiBold",
                                      fontSize: 18.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                            child: TextField(
                              controller:email ,
                              style: TextStyle(
                                  fontFamily: "SinikkaSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  // border: InputBorder.none,
                                  icon: Icon(
                                    FontAwesomeIcons.envelope,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                  hintText: "Enter your email",
                                  hintStyle: TextStyle(
                                      fontFamily: "SinikkaSemiBold",
                                      fontSize: 18.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                            child: TextField(
                              controller: password,
                              style: TextStyle(
                                  fontFamily: "SinikkaSemiBold",
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                  // border: InputBorder.none,
                                  icon: Icon(
                                    FontAwesomeIcons.lock,
                                    color: Colors.black,
                                    size: 22.0,
                                  ),
                                  hintText: "Enter password",
                                  hintStyle: TextStyle(
                                      fontFamily: "SinikkaSemiBold",
                                      fontSize: 18.0)),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 60.0, bottom: 26.0),

                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: Colors.blue,
                                      offset: Offset(1.0, 6.0),
                                      blurRadius: 20.0),
                                ],
                                gradient: LinearGradient(
                                    colors: [Colors.white, Colors.grey],
                                    begin: FractionalOffset(0.2, 0.2),
                                    end: FractionalOffset(1.0, 1.0),
                                    stops: [0.1, 1.0],
                                    tileMode: TileMode.clamp)),
                            child: MaterialButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.grey,
                              child:Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 42.0),
                                child: InkWell(
                                  onTap: (){
                                    if(email.text == "vishal@gmail.com" &&  password.isNull == "0000"&& name == "vishal"){Get.toNamed(Routes.loginScreen);}
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontFamily: "SinikkaSemiBold",
                                        color: Colors.black,
                                        fontSize: 22.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Get.toNamed(Routes.loginScreen);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white10,
                                  Colors.white,
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 1.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          width: 130.0,
                          height: 1.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Text(
                            "OR",
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 16.0,
                                fontFamily: "WorkSansMedium"),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.white10,
                                ],
                                begin: FractionalOffset(0.0, 0.0),
                                end: FractionalOffset(1.0, 1.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          width: 130.0,
                          height: 1.0,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.facebookF,
                              color: Color(0xFF0084ff),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFF0084ff),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, right: 40.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.github,
                              color: Color(0xFF0084ff),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: const Icon(
                              FontAwesomeIcons.google,
                              color: Color(0xFF0084ff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
