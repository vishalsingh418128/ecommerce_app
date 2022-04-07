import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binders.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(Prefs());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'My Learning Course',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        initialRoute: Routes.splashScreen,
        getPages: Binders.dependencies());
  }
}
