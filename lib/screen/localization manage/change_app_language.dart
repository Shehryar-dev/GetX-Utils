import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';

class ChangeAppLanguage extends StatefulWidget {
  const ChangeAppLanguage({super.key});

  @override
  State<ChangeAppLanguage> createState() => _ChangeAppLanguageState();
}

class _ChangeAppLanguageState extends State<ChangeAppLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
          ),
          Text('message'.tr, style: TextStyle(fontSize: 22),),
          SizedBox(height: Get.height * .01,),
          Text('name'.tr,style: TextStyle(fontSize: 22),),
          SizedBox(height: Get.height * .05,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text('English')),
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));

              }, child: Text('Urdu')),
            ],
          )


        ],
      ),
    );
  }
}
