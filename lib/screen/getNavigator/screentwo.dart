import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  String name;
  ScreenTwo({super.key,this.name = ''});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two: ' + widget.name),

      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Screen one'),
              onTap: (){
                Get.back();
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Home Screen'),
              onTap: (){
                Get.back();
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
