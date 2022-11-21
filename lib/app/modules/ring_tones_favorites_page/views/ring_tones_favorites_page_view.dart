import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/ring_tones/controllers/ring_tones_controller.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/ring_tones_favorites_page_controller.dart';

class RingTonesFavoritesPageView
    extends GetView<RingTonesFavoritesPageController> {
  const RingTonesFavoritesPageView({Key? key}) : super(key: key);
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
          'Favorites',
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
          ListTile(
            leading: Text(
              '1',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            title: Text(
              'Bech-Cellos Suite No.1 In.. ',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              '00 : 05',
              style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            trailing: IconButton(
              onPressed: () {
                Get.toNamed(Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                    id: (Get.find<RingTonesController>().selectedTab == 0)
                        ? RingTonesNavigatorKey.ringTonesHome
                        : (Get.find<RingTonesController>().selectedTab == 1)
                            ? RingTonesNavigatorKey.ringTonesSearch
                            : RingTonesNavigatorKey.ringTonesFavorites);
              },
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                color: AppColors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
