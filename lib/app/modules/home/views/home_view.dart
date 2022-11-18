import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.STICKERS_HOME_PAGE);
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.WALLPAPERS_HOME_PAGE);
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.CLASSICAL_MUSIC_PAGE);
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            ),
                          ],
                        ),
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
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.UNIT_CONVERTER_HOME_PAGE);
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.LIVE_WALLPAPERS_PAGE,
                        );
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(
                          Routes.ANIMATED_CALL_SCREEN_HOME_PAGE,
                        );
                      },
                      child: Container(
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
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
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
                Get.toNamed(
                  Routes.RING_TONES,
                );
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
    );
  }
}
