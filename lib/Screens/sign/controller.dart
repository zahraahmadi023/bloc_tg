import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MyTabController extends GetxController with GetSingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void onInit() {

    super.onInit();
    tabController=TabController(length:3 ,vsync: this,initialIndex: 0);
  }
}