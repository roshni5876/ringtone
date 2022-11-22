import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/routes/app_pages.dart';
import 'package:ring_tone/app/widgets/common_card.dart';
import '../../ring_tones/controllers/ring_tones_controller.dart';
import '../../ring_tones/views/bottom_navigtion.dart';
import '../controllers/ring_tones_search_page_controller.dart';

class RingTonesSearchPageView extends GetView<RingTonesSearchPageController> {
  const RingTonesSearchPageView({Key? key}) : super(key: key);
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
          'Search',
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
      bottomNavigationBar: RingTonesBottomNavigtion(),
      body: ListView(
        children: [
          TextFormField(
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.grey,
                size: 30,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
              hintText: 'Ringtones or categories',
              hintStyle: TextStyle(color: AppColors.grey, fontSize: 20),
              fillColor: AppColors.white,
              filled: true,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Most popular categories',
                  style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Broser all',
                  style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          CommonCardUI(
            title: "Most Popular",
            subTitle: "15 ringtones",
            onTap: () {
              Get.toNamed(Routes.INDIVINDIVIDUAL_RINGTONES_PAGE,
                  id: Get.find<RingTonesController>().selectedTab == 0
                      ? RingTonesNavigatorKey.ringTonesHome
                      : RingTonesNavigatorKey.ringTonesSearch);
            },
          ),
        ],
      ),
    );
  }
}
