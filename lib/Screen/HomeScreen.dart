import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Card(
            elevation: 3,
            child: Container(
        child: ExpansionTile(
            title: Text("Translate"),
            leading: Icon(
              Icons.language,
              color: Colors.green,
            ),
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Demo".tr,
                            style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w200),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Tooltip(
                                message: "Bangla",
                                child: GestureDetector(
                                  onTap: (){
                                    Get.updateLocale(Locale('bn', 'BD'));
                                  },
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/bangla.png",
                                        width: 60,
                                        height: 60,
                                      )),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.updateLocale(Locale("hi","IN"));
                                },
                                child: Tooltip(
                                  message: "India",
                                  child: Image.asset(
                                    "assets/images/india.png",
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ),
                              Tooltip(
                                message: "Japan",
                                child: GestureDetector(
                                  onTap: (){
                                    Get.updateLocale(Locale("ja","JP"));
                                  },
                                  child: Image.asset(
                                    "assets/images/japan.png",
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  Get.updateLocale(Locale('en', 'US'));
                                },
                                child: Tooltip(
                                  message: "USA",
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/usa.png",
                                        width: 60,
                                        height: 60,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ],
        ),
      ),
          )),
    );
  }
}
