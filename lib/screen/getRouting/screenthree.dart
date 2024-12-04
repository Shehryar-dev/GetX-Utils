import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screen/getNavigator/screentwo.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});


  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Three' ),

      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Screen Four'),
              onTap: (){
                Get.toNamed('/ScreenFour', arguments:['Adil Sir'] );
                // Get.to(ScreenTwo());
              },
            ),
          )
        ],
      ),
    );
  }
}
