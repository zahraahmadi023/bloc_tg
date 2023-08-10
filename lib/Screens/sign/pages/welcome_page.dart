import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyTabController myTabController=Get.put(MyTabController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: const [
              Text(
                "Free Real Api",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(height: 10,),
              Text(
                "Flutter Tg",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  myTabController.tabController.index=0;
                },
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text("signIn",
                            style: TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                    )),
              ),
                  SizedBox(height: 12,),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      color: Colors.blue),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("SignIn to page",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
