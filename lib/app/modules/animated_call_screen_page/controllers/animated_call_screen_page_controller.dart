import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ring_tone/app/modules/animated_call_screen_favorites_page/views/animated_call_screen_favorites_page_view.dart';
import 'package:ring_tone/app/modules/animated_call_screen_home_page/views/animated_call_screen_home_page_view.dart';
import 'package:ring_tone/app/modules/animated_call_screen_premium_page/views/animated_call_screen_premium_page_view.dart';
import 'package:ring_tone/app/modules/animated_call_screen_search_page/views/animated_call_screen_search_page_view.dart';

class AnimatedCallScreenPageController extends GetxController {
  AnimatedCallScreenPageController({this.argTabNo});
  final int? argTabNo;

  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;
  set selectedTab(int value) => _selectedTab.value = value;

  void selectPage(int index) {
    selectedTab = index;
    // ignore: avoid_print
    print('current tab $selectedTab');
    update();
  }

  @override
  void onInit() {
    if (argTabNo == 1) {
      selectedTab = 1;
    }

    super.onInit();
  }

  List<Widget> animatedCallScreenWidgetOptions = <Widget>[
    const AnimatedCallScreenHomePageView(),
    const AnimatedCallScreenSearchPageView(),
    const AnimatedCallScreenFavoritesPageView(),
    const AnimatedCallScreenPremiumPageView(),
  ];

  DateTime? currentBackPressTime;
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
}
