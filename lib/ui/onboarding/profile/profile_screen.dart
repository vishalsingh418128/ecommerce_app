import 'package:ecommerce_app/ui/onboarding/profile/profile_controller.dart';
import 'package:ecommerce_app/ui/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Profile"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    backgroundBlendMode: BlendMode.color,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://us.123rf.com/450wm/topntp/topntp1603/topntp160303230/54038978-abstract-blur-in-supermarket.jpg?ver=6'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                  ),
                  height: 250,
                  width: 399,
                ),
                Positioned(
                  top: 40,
                  right: 140,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(100)),
                    height: 130,
                    width: 130,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image.asset(
                          'assets/Screenshot 2022-04-06 at 1.26.54 PM.png',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ],
            ),
            Obx(
              () =>(controller.name1.value == "1")?SizedBox(): Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onSaved: (v) {
                        controller.name1.value = controller.name.text;
                      },
                      controller: controller.name,
                      decoration: const InputDecoration(
                          labelText: "name", hintText: "enter your name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onSaved: (v) {
                        controller.userName1.value = controller.userName.text;
                      },
                      controller: controller.userName,
                      decoration: const InputDecoration(
                          labelText: "User name", hintText: "enter user name"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onSaved: (v) {
                        controller.mobile.value = controller.mobileNumber.text;
                      },
                      controller: controller.mobileNumber,
                      decoration: const InputDecoration(
                          labelText: "Mobile number",
                          hintText: "enter mobile number"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onSaved: (v) {
                        controller.location1.value = controller.location.text;
                      },
                      controller: controller.location,
                      decoration: const InputDecoration(
                          labelText: "location", hintText: "enter location"),
                    ),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     onSaved:  (v){
            //       controller.name1.value = controller.name.text;
            //     },
            //     controller: controller.name,
            //     decoration: const InputDecoration(
            //         labelText: "name", hintText: "enter your name"),
            //   ),
            // ),
            // Padding(
            //
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     onSaved:  (v){
            //       controller.userName1.value = controller.userName.text;
            //     },
            //     controller: controller.userName,
            //     decoration: const InputDecoration(
            //         labelText: "User name", hintText: "enter user name"),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     onSaved:  (v){
            //       controller.mobile.value = controller.mobileNumber.text;
            //     },
            //     controller:controller.mobileNumber,
            //     decoration: const InputDecoration(
            //         labelText: "Mobile number",
            //         hintText: "enter mobile number"),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     onSaved:  (v){
            //       controller.location1.value = controller.location.text;
            //     },
            //     controller: controller.location,
            //     decoration: const InputDecoration(
            //         labelText: "location", hintText: "enter location"),
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
          InkWell(
                  onTap: () {
                   controller.save();
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                        child: Text(
                      "Save",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
