import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassicalMusicPageController extends GetxController {
  ClassicalMusicPageController({this.argTabNo});
  final int? argTabNo;

  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;
  set selectedTab(int value) => _selectedTab.value = value;
  final classicalMusicScaffoldKey = GlobalKey<ScaffoldState>();
  DateTime? currentBackPressTime;

  @override
  void onInit() {
    if (argTabNo == 1) {
      selectedTab = 1;
    }

    super.onInit();
  }

  Future<bool> onWillPop() async {
    if (selectedTab != 0) {
      selectedTab = 0;
      return Future.value(false);
    } else {
      DateTime now = DateTime.now();
      if (currentBackPressTime == null ||
          now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
        currentBackPressTime = now;
        return Future.value(false);
      }
      return Future.value(true);
    }
  }

  void selectPage(int index) {
    selectedTab = index;
    // ignore: avoid_print
    print('current tab $selectedTab');
    update();
  }
}
