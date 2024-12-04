import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screen/getNavigator/screentwo.dart';

class ScreenOne extends StatefulWidget {
  String name;
   ScreenOne({super.key,this.name = ''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One: ' + widget.name),

      ),
      body: Column(
        children: [
           Card(
            child: ListTile(
              title: Text('Screen Two'),
              onTap: (){
                Get.to(ScreenTwo());
              },
            ),
          )
        ],
      ),
    );
  }
}
