import 'package:ecommerce_app/ui/prefs.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  Prefs prefs = Get.find<Prefs>();
  RxString mobile = "".obs;
  RxString location1 = "".obs;
  RxString name1 = "".obs;
  RxString userName1 = "".obs;

  TextEditingController name = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController location = TextEditingController();

  @override
  void onInit() {
    name.text = prefs.name.val;
    userName.text = prefs.userName.val;
    location.text = prefs.location.val;
    mobileNumber.text = prefs.mobileNumber.val;
    super.onInit();
  }

  void save() {
    prefs.name.val = name.text;
    prefs.mobileNumber.val = mobileNumber.text;
    prefs.location.val = location.text;
    prefs.userName.val = userName.text;
    Get.back();
  }
}
