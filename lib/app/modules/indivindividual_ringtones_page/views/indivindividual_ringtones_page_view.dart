import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/constants/string.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_page/views/common_listtile.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../controllers/indivindividual_ringtones_page_controller.dart';

class IndivindividualRingtonesPageView
    extends GetView<IndivindividualRingtonesPageController> {
  const IndivindividualRingtonesPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {
            Get.back(id: RingTonesNavigatorKey.ringTonesHome);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Most Popular',
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
          CommonListTile(
              onPressed: () {},
              number: 1,
              subTitle: "00:12",
              title: "8-bit Phone",
              onTap: () {
                Get.toNamed(Routes.INDIVINDIVIDUAL_RINGTONES_DETAILS_PAGE,
                    id: RingTonesNavigatorKey.ringTonesHome);
              }),
        ],
      ),
    );
  }
}
