import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/screen/get%20media%20query/screen.dart';
import 'package:getx_practice/screen/getNavigator/screenone.dart';
import 'package:getx_practice/screen/localization%20manage/change_app_language.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('GetX Widgets'),
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.battery_alert),
              title: Text("GetX Dialog Alert"),
              subtitle: Text("Getx dialog alert checkup"),
              onTap: (){
                Get.defaultDialog(
                  titlePadding:const EdgeInsets.only(top: 20),
                  title: "Delete Chat",
                  contentPadding:const EdgeInsets.all(5),
                  middleText: "Lorem ipsum dolor sit amet",
                  backgroundColor: Colors.green,
                  titleStyle:const TextStyle(
                    color: Colors.white
                  ),
                  middleTextStyle:const TextStyle(
                      color: Colors.white
                  ),
                  content:const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.php),Icon(Icons.javascript),Icon(Icons.code),],),
                  cancel:  TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child:const Text("Cancel",style: TextStyle(color: Colors.white,),),
                  ),
                  confirm: TextButton(
                    onPressed: (){
                      Get.back();
                    },
                    child:const Text("Confirm",style: TextStyle(color: Colors.white,),),
                  )

                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.battery_alert),
              title: Text("GetX Bottom sheet"),
              subtitle: Text("Getx dialog alert checkup"),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        Divider(height: 1,),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )
                );

              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Get Navigation"),
              onTap: (){
                Get.to( ScreenOne());

              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title:const Text("Get Routing"),
              onTap: (){
                Get.toNamed('/ScreenThree');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Media Query"),
              onTap: (){
                Get.to( Screen());

              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text("Change Language"),
              onTap: (){
                Get.to( ChangeAppLanguage());

              },
            ),
          )
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Get.snackbar(
            "Hello World",
            "GetX Library Inject",
          // backgroundColor: Colors.blue

        );
      },child:const Icon(Icons.add),),
    );
  }
}
