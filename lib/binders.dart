import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/flutter_screen/flutter_screen.dart';
import 'package:ecommerce_app/ui/onboarding/forget/forget_password_controller.dart';
import 'package:ecommerce_app/ui/onboarding/forget/forget_password_screen.dart';
import 'package:ecommerce_app/ui/onboarding/homepage/homepage_controller.dart';
import 'package:ecommerce_app/ui/onboarding/homepage/homepage_screen.dart';
import 'package:ecommerce_app/ui/onboarding/image/image_controller.dart';
import 'package:ecommerce_app/ui/onboarding/image/image_screen.dart';
import 'package:ecommerce_app/ui/onboarding/intro/intro_controller.dart';
import 'package:ecommerce_app/ui/onboarding/intro/intro_screen.dart';
import 'package:ecommerce_app/ui/onboarding/login/login_controller.dart';
import 'package:ecommerce_app/ui/onboarding/login/login_screen.dart';
import 'package:ecommerce_app/ui/onboarding/newuserlogin/new_user_controller.dart';
import 'package:ecommerce_app/ui/onboarding/newuserlogin/new_user_screen.dart';
import 'package:ecommerce_app/ui/onboarding/notification/notification_controller.dart';
import 'package:ecommerce_app/ui/onboarding/notification/notification_screen.dart';
import 'package:ecommerce_app/ui/onboarding/profile/profile_controller.dart';
import 'package:ecommerce_app/ui/onboarding/profile/profile_screen.dart';
import 'package:ecommerce_app/ui/onboarding/sighup/signup_controller.dart';
import 'package:ecommerce_app/ui/onboarding/sighup/signup_screen.dart';
import 'package:ecommerce_app/ui/onboarding/splash/splash_controller.dart';
import 'package:ecommerce_app/ui/onboarding/splash/splash_screen.dart';

import 'package:get/get.dart';

class Binders{
  static List<GetPage> dependencies(){
    return [
      GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreen(),
        binding: BindingsBuilder.put(() => SplashController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.introScreen,
        page: () => const IntroScreen(),
        binding: BindingsBuilder.put(() => IntroController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.flutterScreen,
        page: () => const FlutterScreen(),
        binding: BindingsBuilder.put(() => IntroController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.loginScreen,
        page: () =>  LoginScreen(),
        binding: BindingsBuilder.put(() => LoginController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.signupScreen,
        page: () => const SignupScreen(),
        binding: BindingsBuilder.put(() => signupController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.imageScreen,
        page: () => const ImageScreen(),
        binding: BindingsBuilder.put(() =>ImageController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.forgetPasswordScreen,
        page: () =>  ForgetPasswordScreen(),
        binding: BindingsBuilder.put(() =>ForgetPasswordController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.newUserScreen,
        page: () =>  NewUserScreen(),
        binding: BindingsBuilder.put(() =>NewUserController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.homePageScreen,
        page: () =>  HomePageScreen(),
        binding: BindingsBuilder.put(() =>HomePageController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.notificationScreen,
        page: () => const NotificationScreen(),
        binding: BindingsBuilder.put(() =>NotificationController()),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.profileScreen,
        page: () => const ProfileScreen(),
        binding: BindingsBuilder.put(() =>ProfileController()),
        transition: Transition.fadeIn,
      ),
    ];
  }

}