import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get MediaQuery'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * .2,
              width: Get.width * .8,
              alignment: Alignment.center,
              decoration:const BoxDecoration(
                color: Colors.red
              ),
              child:const Text('Container 1'),
            ),
            Container(
              alignment: Alignment.center,
              height: Get.height * .3,
              width: Get.width * .8,
              decoration:const BoxDecoration(
                  color: Colors.green
              ),
              child:const Text('Container 2'),
            ),
            Container(
              width: Get.width * 1,
              alignment: Alignment.center,
              height: Get.height * .4,
              decoration:const BoxDecoration(
                  color: Colors.blue
              ),
              child:const Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
