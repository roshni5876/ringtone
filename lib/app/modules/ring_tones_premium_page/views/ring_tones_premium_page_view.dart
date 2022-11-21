import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/ring_tones_premium_page/views/common_row.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

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
            Get.toEnd(() => Routes.RING_TONES_HOME_PAGE);
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
      body: Column(
        children: [
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
            height: 30,
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
        ],
      ),
    );
  }
}
