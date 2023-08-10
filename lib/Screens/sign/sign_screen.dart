import 'package:bloc_tg/Screens/sign/controller.dart';
import 'package:bloc_tg/Screens/sign/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/signIn_page.dart';
import 'pages/signUp_page.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MyTabController myTabController=Get.put(MyTabController());
    return  Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("images/welcom.png"),fit: BoxFit.cover)
        ),
        child: Container(
          color: Colors.black38,
          child: TabBarView(
            controller: myTabController.tabController,
            //controller: tabController,
            children: const[
            WelcomePage(),
            SignInPage(),
            SignUpPage(),
            ],
              
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 60,
      //   color: Colors.,
      //   child:  TabBar(
      //     controller: tabController,
      //     tabs: const [
      //       Text("data 1"),
      //       Text("data 1"),
      //         Text("data 1"),

      //     ]),
      // ),
    
    );

  }
}