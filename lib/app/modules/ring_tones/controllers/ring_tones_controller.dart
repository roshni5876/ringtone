import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ring_tone/app/modules/ring_tones_favorites_page/views/ring_tones_favorites_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_home__page/views/ring_tones_home_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/views/ring_tones_premium_page_view.dart';
import 'package:ring_tone/app/modules/ring_tones_search_page/views/ring_tones_search_page_view.dart';

import '../../../core/theme/colors.dart';
import '../../../routes/app_pages.dart';

class RingTonesController extends GetxController {
  RingTonesController({this.argTabNo});

  final int? argTabNo;

  final _selectedTab = 0.obs;
  int get selectedTab => _selectedTab.value;
  set selectedTab(int value) => _selectedTab.value = value;

  DateTime? currentBackPressTime;

  List<Widget> widgetOptions = <Widget>[
    const RingTonesHomePageView(),
    const RingTonesSearchPageView(),
    const RingTonesFavoritesPageView(),
    const RingTonesPremiumPageView(),
  ];

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

var drawerWidget = SafeArea(
  child: Scaffold(
    body: ListView(
      children: [
        Row(
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.left,
              initDelay: const Duration(milliseconds: 0),
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              child: Column(
                children: [
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.purple500),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sticky_note_2_sharp,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Stickers',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.orange),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallpaper,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Wallpapers',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.library_music_sharp,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Classical Music',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedCard(
              direction: AnimatedCardDirection.right,
              initDelay: const Duration(milliseconds: 0),
              duration: const Duration(seconds: 1),
              curve: Curves.bounceOut,
              child: Column(
                children: [
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.pink),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.ad_units_outlined,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Unit Converter',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.red400),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallpaper_sharp,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Live Wallpapers',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: Get.height / 4,
                    width: Get.width / 2,
                    decoration: BoxDecoration(color: AppColors.green),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.animation_rounded,
                          color: AppColors.white,
                          size: 34,
                        ),
                        Text(
                          'Animated Call Screen',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        AnimatedCard(
          direction: AnimatedCardDirection.top,
          initDelay: const Duration(milliseconds: 0),
          duration: const Duration(seconds: 1),
          curve: Curves.bounceOut,
          child: InkWell(
            onTap: () {
              Get.toNamed(Routes.RING_TONES);
            },
            child: Container(
              height: Get.height / 4,
              width: Get.width,
              decoration: BoxDecoration(color: AppColors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.queue_music_rounded,
                    color: AppColors.white,
                    size: 34,
                  ),
                  Text(
                    'Ringtones',
                    style: TextStyle(color: AppColors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ),
);
