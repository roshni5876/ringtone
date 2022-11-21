import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/views/common_row.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../../../core/constants/string.dart';
import '../../ring_tones/controllers/ring_tones_controller.dart';
import '../controllers/ring_tones_premium_page_controller.dart';

class RingTonesPremiumPageView extends GetView<RingTonesPremiumPageController> {
  const RingTonesPremiumPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.find<RingTonesController>().selectedTab = 0;
            Get.offNamedUntil(Routes.RING_TONES_HOME_PAGE,
                ModalRoute.withName(Routes.RING_TONES),
                id: RingTonesNavigatorKey.ringTonesHome);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey,
            size: 20,
          ),
        ),
        title: Text(
          'Go VIP',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.SETTINGS_PAGE);
            },
            icon: Icon(
              Icons.settings,
              color: AppColors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.grey900,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () {
                      return InkWell(
                        onTap: () {
                          controller.premiumOptions = PremiumOptions.monthly;
                        },
                        child: Container(
                          width: Get.width / 2.2,
                          decoration: BoxDecoration(
                            color: PremiumOptions.monthly ==
                                    controller.premiumOptions
                                ? AppColors.yellow
                                : AppColors.transparent,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(width: 14.2),
                              Text(
                                "Monthly",
                                style: TextStyle(
                                    color: PremiumOptions.monthly ==
                                            controller.premiumOptions
                                        ? AppColors.black
                                        : AppColors.grey,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "₹69.99",
                                style: TextStyle(
                                    color: PremiumOptions.monthly ==
                                            controller.premiumOptions
                                        ? AppColors.black
                                        : AppColors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Obx(() => InkWell(
                        onTap: () {
                          controller.premiumOptions = PremiumOptions.yearly;
                        },
                        child: Container(
                          width: Get.width / 2.2,
                          decoration: BoxDecoration(
                            color: PremiumOptions.yearly ==
                                    controller.premiumOptions
                                ? AppColors.yellow
                                : AppColors.transparent,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(width: 14.2),
                              Text(
                                "Yearly",
                                style: TextStyle(
                                    color: PremiumOptions.yearly ==
                                            controller.premiumOptions
                                        ? AppColors.black
                                        : AppColors.grey,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "₹349.99",
                                style: TextStyle(
                                    color: PremiumOptions.yearly ==
                                            controller.premiumOptions
                                        ? AppColors.black
                                        : AppColors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          CommonRow(
            ic: Icons.queue_music,
            text: '740+ ringtones',
          ),
          CommonRow(
            ic: Icons.photo_album_outlined,
            text: '1200+ wallpapers',
          ),
          CommonRow(
            ic: Icons.wallpaper_outlined,
            text: '450+ live wallpapers',
          ),
          CommonRow(
            ic: Icons.call_received,
            text: "100+ Animatec Call Screens",
          ),
          CommonRow(
            ic: Icons.control_camera_outlined,
            text: "All future content FREE",
          ),
          CommonRow(
            ic: Icons.library_music,
            text: "Listen Music While App is in background",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.primaryColor,
                ),
                const SizedBox(
                  width: 12,
                ),
                Flexible(
                  child: Text(
                    "No Ads",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              minWidth: Get.width,
              height: 50,
              color: AppColors.primaryColor,
              onPressed: () {},
              child: const Text(
                'Acttivate Premium',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of use',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy policy',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
