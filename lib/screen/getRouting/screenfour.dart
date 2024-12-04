import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screen/getNavigator/screentwo.dart';

class ScreenFour extends StatefulWidget {
  var name;
  ScreenFour({super.key,this.name = ''});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Four: ' + Get.arguments[0]),

      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Screen Three'),
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
          )
        ],
      ),
    );
  }
}
