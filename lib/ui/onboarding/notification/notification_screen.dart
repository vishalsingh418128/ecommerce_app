import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'notification_controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Notification"),
      ),
      body: Column(

        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.lightBlueAccent,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  )
                ]

              ),
              child: Row(
                children: [
                  Expanded(child: const Icon(Icons.local_offer,size: 40,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Expanded(child: Text('Today offer buy 1 kg potato get 1 kg free',style: TextStyle(fontSize: 15),)),
                        Text('Time:10.30')
                      ],
                    ),
                  )
                ],
              ),
              height:80 ,
              width:399 ,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.lightBlueAccent,
                      offset: Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    )
                  ]

              ),
              child: Row(
                children: [
                  Expanded(child: const Icon(Icons.free_breakfast,size: 40,)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Expanded(child: Text('20 % discount on shopping at rupess 2500')),
                        Text('Time:11.30')
                      ],
                    ),
                  )
                ],
              ),
              height:80 ,
              width:399 ,

            ),
          )
        ],

      ),
    );
  }
}