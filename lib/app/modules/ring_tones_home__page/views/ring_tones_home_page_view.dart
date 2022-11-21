import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../../../widgets/common_card.dart';
import '../controllers/ring_tones_home_page_controller.dart';

class RingTonesHomePageView extends GetView<RingTonesHomePageController> {
  const RingTonesHomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        title: Text(
          'Ringtones',
          style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Get.toNamed(Routes.HOME),
          icon: Icon(
            Icons.menu,
            color: AppColors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.SETTINGS_PAGE);
            },
            icon: Icon(
              Icons.settings,
              color: AppColors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CommonCardUI(
            title: "Most popular",
            subTitle: "15 ringtones",
            onTap: () {
              Get.toNamed(Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                  id: RingTonesNavigatorKey.ringTonesHome);
            },
          ),
        ],
      ),
    );
  }
}
