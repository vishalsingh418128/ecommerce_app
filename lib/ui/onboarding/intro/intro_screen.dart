import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/intro/intro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends GetView<IntroController> {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,

        body: IntroductionScreen(
          key: controller.introKey,
          globalBackgroundColor: Colors.white,
          globalHeader: const Align(
            alignment: Alignment.topRight,
          ),
          globalFooter: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              child: const Text(
                'skip',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black),
              ),
              onPressed: () => controller.onIntroEnd(context),
            ),
          ),
          pages: [
            PageViewModel(
              title: "fruits and vegetable",
              body: "fruits and vegetable are fresh and cool.",
              image: controller.buildImage(
                  'https://image.shutterstock.com/image-photo/composition-assorted-raw-organic-vegetables-600w-598749548.jpg'),
              decoration: IntroController.pageDecoration,
            ),
            PageViewModel(
              title: "good quality product",
              body: "all the product in fresh condition .",
              image: controller.buildImage(
                  'https://image.shutterstock.com/z/stock-photo-empty-wood-table-top-on-shelf-in-supermarket-blurred-background-1140429617.jpg'),
              decoration: IntroController.pageDecoration,
            ),
            PageViewModel(
              title: "soft drink and juice",
              body: "all soft drink and juice in reasonable price .",
              image: controller.buildImage(
                  'https://5.imimg.com/data5/RK/FK/PQ/SELLER-102779556/sprite-cold-drink-500x500.jpg'),
              decoration: IntroController.pageDecoration,
            ),
          ],
          onDone: () => controller.onIntroEnd(context),
          //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
          showSkipButton: false,
          skipOrBackFlex: 0,
          nextFlex: 0,
          showBackButton: true,
          //rtl: true, // Display as right-to-left
          back: const Icon(Icons.arrow_back),
          skip:
              const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
          next: const Icon(Icons.arrow_forward),
          done:
              InkWell(
                onTap: (){
                  Get.toNamed(Routes.homePageScreen);
                },
                  child: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600))),
          curve: Curves.fastLinearToSlowEaseIn,
          controlsMargin: const EdgeInsets.all(16),
          controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
          dotsDecorator: const DotsDecorator(
            size: Size(10.0, 10.0),
            color: Colors.grey,
            activeSize: Size(22.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
          dotsContainerDecorator: const ShapeDecoration(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
        ));
  }
}
