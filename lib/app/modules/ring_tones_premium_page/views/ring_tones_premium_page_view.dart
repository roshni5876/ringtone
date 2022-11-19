import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
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
    );
  }
}
