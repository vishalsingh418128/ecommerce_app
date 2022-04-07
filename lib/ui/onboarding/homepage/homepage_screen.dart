import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/routes.dart';
import 'package:ecommerce_app/ui/onboarding/homepage/homepage_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:enhanced_drop_down/enhanced_drop_down.dart';

import '../../../my_behavior.dart';

final List<String> imgList = [
  'assets/Screenshot 2022-04-05 at 3.05.04 PM.png',
  'assets/Screenshot 2022-04-05 at 3.06.10 PM.png',
  'assets/Screenshot 2022-04-05 at 3.35.28 PM.png',
];
List<String> imageList = [
  "assets/Screenshot 2022-04-05 at 4.10.38 PM.png",
  "assets/Screenshot 2022-04-05 at 4.10.43 PM.png",
  "assets/Screenshot 2022-04-05 at 4.10.49 PM.png",
  "assets/Screenshot 2022-04-05 at 4.10.54 PM.png",
  "assets/Screenshot 2022-04-05 at 4.10.28 PM.png"
];
List<String> bannerList = [
  "assets/Screenshot 2022-04-06 at 11.09.04 AM.png",
  "assets/Screenshot 2022-04-06 at 11.09.32 AM.png",
  "assets/Screenshot 2022-04-06 at 11.15.51 AM.png",
];
List<String> gridimage = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_BgtmwGFQtqzZ8reRSIP4bgdYHJvtmRXX3g&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRALnmup7OFphjiLFf5wjzkBk77hVNZg0VrnA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw4YQMo-GVYPna_hIhwNXJ_2kszCy38nfaPg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2r3bM8hs5ZxFUPWwsvR9UQ1JJCjeOeo40LA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYaRSV3slrFI1xYcaIeMN4UjyTg0Xv5AKoRg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQRzIG7cY3iWV-h_3mgnlspYTaKAiTV5QQ1A&usqp=CAU"
];
List<String> abc = [
  "fruits 20% off",
  "vegetables 30% off",
  "dryfruits 10%off",
  "drinks buy 1 get 1 free",
  "clean and house 15% off",
  "beauty 30% off"
];

class HomePageScreen extends GetView<HomePageController> {
  HomePageScreen({Key? key}) : super(key: key);

  String _selected = "";

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leadingWidth: 20,
        toolbarHeight: 80,
        actions: <Widget>[  InkWell(
            onTap: () {
              Get.toNamed(Routes.loginScreen);
            },
            child:Icon(Icons.login_outlined, color: Colors.white,)
        ),
          IconButton(
            icon: InkWell(
                onTap: () {
                  Get.toNamed(Routes.notificationScreen);
                },
                child: const Icon(Icons.notifications)),
            tooltip: 'identify Icon',
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]

        elevation: 1.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
        ),
        backgroundColor: Colors.green,
        //IconButton
        title: Row(
          children: [
            Expanded(
              child: Column(
                children: [

                  SizedBox(
                    height: 35,
                    width: 399,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'search all grocery',
                            hintText: "fruit and vegetables",
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("vishal"),
            accountEmail: Text("vishal@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.gecurrent.com/sites/default/files/styles/large/public/images/how-is-the-grocery-store-footprint-changing-850x567.jpg?itok=iwp-U_eS"),
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.profileScreen);
            },
            child: const ListTile(
              leading: Icon(Icons.person),
              title: Text("My account"),
              subtitle: const Text("personal"),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.search),
            title: Text("Categories"),
            subtitle: Text("find"),
          ),
          const ListTile(
            leading: Icon(Icons.menu_book_rounded),
            title: Text('Terms and conditions'),
          ),
          const ListTile(
            leading: const Icon(Icons.settings),
            title: Text('Settings'),
          ),
          const ListTile(
            leading: Icon(Icons.saved_search),
            title: Text('about us'),
          ),
        ]),
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

        // SizedBox(
        //   height: 55,
        //   width: 390,
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
        //     child: TextFormField(
        //       decoration: InputDecoration(
        //           labelText: 'search all grocery',
        //           hintText: "fruit and vegetables",
        //           suffixIcon: const Icon(Icons.search),
        //           border: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10))),
        //     ),
        //   ),
        // ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            decoration: const InputDecoration(
                labelText: "location",
                hintText: "enter your location",
                suffixIcon: Icon(Icons.location_on)),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                ),
                items: imgList
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            e,
                            height: Get.height * .45,
                            width: Get.width,
                            fit: BoxFit.fitWidth,
                          ),
                        ))
                    .toList(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Shop All',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: Get.height * .25,
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        String img = imageList[index];
                        return InkWell(
                          onTap: () {
                            if (index == 1) {
                              Get.toNamed(Routes.notificationScreen);
                            }
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.asset(
                              img,
                            ),
                          ),
                        );
                      },
                      itemCount: imageList.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),

            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Shop By Category',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 280,
          width: 399,
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: gridimage.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [Image.network(gridimage[index]), Text(abc[index])],
              );
            },
          ),
        ),
        const Divider(
          thickness: 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20)),
                  height: 180,
                  width: 390,
                  child: Image.asset('assets/banner3.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  height: 180,
                  width: 390,
                  child: Image.asset('assets/banner1.png'),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  height: 180,
                  width: 390,
                  child: Image.asset('assets/banner2.png'),
                ),
              ),
            ],
          ),
        ),
        Image.asset('assets/fixed banner.png'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    width: 140,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Image.asset('assets/add.png')),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'BB Popular -Almond/badam',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset('assets/rateing.png'),
                        SizedBox(
                          height: 70,
                          child: EnhancedDropDown.withData(
                            dropdownLabelTitle: "",
                            defaultOptionText: "Select One",
                            dataSource: const ["500gm -pouch", "1kg- pouch"],
                            valueReturned: (quantity) {
                              controller.selected.value = quantity;
                              print(_selected);
                            },
                          ).marginZero,
                        ),
                        Obx(() => (controller.selected.value == "0")
                            ? Container()
                            : Text(
                                (controller.selected.value == "1kg- pouch")
                                    ? "750INR "
                                    : "399INR",
                              )),
                        Container(
                            height: 35,
                            width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(child: Text('ADD')))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    width: 140,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Image.asset('assets/add.png')),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'BB Popular -Almond/badam',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset('assets/rateing.png'),
                        SizedBox(
                          height: 70,
                          child: EnhancedDropDown.withData(
                            dropdownLabelTitle: "",
                            defaultOptionText: "Select One",
                            dataSource: const ["500gm -pouch", "1kg- pouch"],
                            valueReturned: (quantity) {
                              controller.selected.value = quantity;
                              print(_selected);
                            },
                          ).marginZero,
                        ),
                        Obx(() => (controller.selected.value == "0")
                            ? Container()
                            : Text(
                                (controller.selected.value == "1kg- pouch")
                                    ? "750INR "
                                    : "399INR",
                              )),
                        Container(
                            height: 35,
                            width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(child: Text('ADD')))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    width: 140,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Image.asset('assets/add.png')),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'BB Popular -Almond/badam',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset('assets/rateing.png'),
                        SizedBox(
                          height: 70,
                          child: EnhancedDropDown.withData(
                            dropdownLabelTitle: "",
                            defaultOptionText: "Select One",
                            dataSource: const ["500gm -pouch", "1kg- pouch"],
                            valueReturned: (quantity) {
                              controller.selected.value = quantity;
                              print(_selected);
                            },
                          ).marginZero,
                        ),
                        Obx(() => (controller.selected.value == "0")
                            ? Container()
                            : Text(
                                (controller.selected.value == "1kg- pouch")
                                    ? "750INR "
                                    : "399INR",
                              )),
                        Container(
                            height: 35,
                            width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(child: Text('ADD')))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    width: 140,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(19),
                            child: Image.asset('assets/add.png')),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'BB Popular -Almond/badam',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset('assets/rateing.png'),
                        SizedBox(
                          height: 70,
                          child: EnhancedDropDown.withData(
                            dropdownLabelTitle: "",
                            defaultOptionText: "Select One",
                            dataSource: const ["500gm -pouch", "1kg- pouch"],
                            valueReturned: (quantity) {
                              controller.selected.value = quantity;
                              print(_selected);
                            },
                          ).marginZero,
                        ),
                        Obx(() => (controller.selected.value == "0")
                            ? Container()
                            : Text(
                                (controller.selected.value == "1kg- pouch")
                                    ? "750INR "
                                    : "399INR",
                              )),
                        Container(
                            height: 35,
                            width: 100,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(child: Text('ADD')))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 3,
        ),
        Image.asset('assets/Screenshot 2022-04-07 at 3.49.23 PM.png'),
        const Divider(
          thickness: 3,
        ),
                ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: Get.height * .20,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          String banner = bannerList[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.asset(
                              banner,
                              width: 399,
                              height: 120,
                            ),
                          );
                        },
                        itemCount: bannerList.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                      ),
                    ),
                  ),
                ),
      ])),
    );
  }
}
