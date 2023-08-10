import 'package:bloc_tg/Screens/sign/sign_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(/////////////yek rang kardan appbar

    const SystemUiOverlayStyle(
    statusBarColor:Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    /////////////////////////////////navigation//////////////
    systemNavigationBarColor:Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark
    ));//////////////////////////////////////
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowMaterialGrid: false,
      home: SignScreen(),

    );

  }
}