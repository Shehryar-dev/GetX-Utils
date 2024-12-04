import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screen/getNavigator/screenone.dart';
import 'package:getx_practice/screen/getNavigator/screentwo.dart';
import 'package:getx_practice/screen/getRouting/screenfour.dart';
import 'package:getx_practice/screen/getRouting/screenthree.dart';
import 'package:getx_practice/screen/home_screen.dart';
import 'package:getx_practice/screen/localization%20manage/languages/app_lang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale:const Locale('ur', 'PK'),
      translations: AppLang(),
      fallbackLocale:const Locale('ur', 'PK'),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/ScreenOne', page: ()=> ScreenOne()),
        GetPage(name: '/ScreenTwo', page: ()=> ScreenTwo()),
        GetPage(name: '/ScreenThree', page: ()=> ScreenThree()),
        GetPage(name: '/ScreenFour', page: ()=> ScreenFour()),
        GetPage(name: '/HomeScreen', page: ()=>const HomeScreen()),
      ],
    );
  }
}
