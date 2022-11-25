import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ring_tone/app/core/theme/colors.dart';
import 'package:ring_tone/app/modules/indivindividual_ringtones_details_page/views/common_listtile.dart';
import 'package:ring_tone/app/routes/app_pages.dart';

import '../../../core/constants/string.dart';
import '../../ring_tones/controllers/ring_tones_controller.dart';
import '../controllers/indivindividual_ringtones_details_page_controller.dart';

class IndivindividualRingtonesDetailsPageView
    extends GetView<IndivindividualRingtonesDetailsPageController> {
  const IndivindividualRingtonesDetailsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.transparent,
        leading: IconButton(
          onPressed: () {
            if (Get.find<RingTonesController>().selectedTab == 0) {
              Get.back(id: RingTonesNavigatorKey.ringTonesHome);
            } else if (Get.find<RingTonesController>().selectedTab == 1) {
              Get.back(id: RingTonesNavigatorKey.ringTonesSearch);
            } else {
              Get.back(id: RingTonesNavigatorKey.ringTonesFavorites);
            }
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.grey,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: AppColors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: AppColors.grey900,
                      title: Text(
                        'Credits',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      content: RichText(
                        text: TextSpan(
                          text: '8-bit Phone is created by',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'timgormly',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const TextSpan(text: 'under'),
                            TextSpan(
                              text: '(CC BY 3.0)',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            const TextSpan(text: 'licence'),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'OK',
                            style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    );
                  });
            },
            icon: Icon(
              Icons.cruelty_free_outlined,
              color: AppColors.white,
            ),
          ),
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
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              '8-bit Phone',
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "00:12",
            style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            radius: 40,
            child: Icon(
              Icons.play_arrow,
              color: AppColors.black,
              size: 40,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTileRingTones(
            ic: Icons.call_rounded,
            onTap: () {},
            title: 'Set as ringtone',
          ),
          ListTileRingTones(
            ic: Icons.contact_phone_rounded,
            onTap: () {},
            title: 'Set as contact ringtone',
          ),
          ListTileRingTones(
            ic: Icons.notifications_active,
            onTap: () {},
            title: 'Set as notification sound',
          ),
          ListTileRingTones(
            ic: Icons.alarm_sharp,
            onTap: () {},
            title: 'Set as alarm',
          ),
          ListTileRingTones(
            ic: Icons.downloading_rounded,
            onTap: () {},
            title: 'Download',
          )
        ],
      ),
    );
  }
}
